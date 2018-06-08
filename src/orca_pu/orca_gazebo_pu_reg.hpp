
#include <orca/orca.h>
#include <orca/gazebo/GazeboServer.h>
#include <orca/gazebo/GazeboModel.h>

using namespace orca::all;
using namespace orca::task;
using namespace orca::gazebo;
using namespace std;
// typedef RegularisationTask<ControlVariable::JointTorque> JointTorqueReg;
// 
// class gravityRegular : public JointTorqueReg
// {
//   public:
//       gravityRegular(const std::string& name):JointTorqueReg(name)
//       {
// 	Gravity_torque_.resize(ndof_);
// 	Masse_inv_.resize(ndof_,ndof_);
//       }
//     void onUpdateAffineFunction(double current_time,double dt)
//      {
// 
//        	  ndof_ = robot()->getNrOfDegreesOfFreedom();
// 
// 	  Gravity_torque_ =robot()->getJointGravityTorques();
// 
// 	  Masse_inv_ = robot()->getMassMatrix().inverse();
// 
// 	  euclidianNorm().A() = Masse_inv_;
// 
// 	  euclidianNorm().b() = -0.5*Masse_inv_*Gravity_torque_ ;
// 
// 
//       }
//       
// protected:
// 	Eigen::VectorXd Gravity_torque_;
// 	Eigen::MatrixXd Masse_inv_;
// 	 int ndof_;
//    };

class gravityRegular : public RegularisationTask<ControlVariable::GeneralisedTorque>
{
public:
  gravityRegular(const std::string& name):RegularisationTask(name)
  {
 	Gravity_torque_.resize(6+ndof_);
	Masse_inv_.resize(6+ndof_,6+ndof_);
      }
      
    void onUpdateAffineFunction(double current_time,double dt)
     {

       	  ndof_ = robot()->getNrOfDegreesOfFreedom();

	  Gravity_torque_ =robot()->getJointGravityTorques();

	  Masse_inv_ = robot()->getMassMatrix().inverse();

// 	 ( euclidianNorm().A()).block(6,6,ndof_,ndof_) = Masse_inv_;
	 ( euclidianNorm().b()).segment(6,ndof_) = -0.5*Gravity_torque_ ;


      }
      
protected:
	Eigen::VectorXd Gravity_torque_;
	Eigen::MatrixXd Masse_inv_;
	 int ndof_;
   };
  
  
  
   class  ctrsRegTask_premier : public RegularisationTask<ControlVariable::GeneralisedAcceleration> {
  
public:
  ctrsRegTask_premier(const std::string& name): RegularisationTask(name)
  {
  }
  
  
  void set_nbr_ctrs(int nombre_contrainte)
  {
    int ndof = robot()->getNrOfDegreesOfFreedom();
    nbr_ctrs = nombre_contrainte;
    matrix_ctrs_lb.resize(ndof,nbr_ctrs);
    matrix_ctrs_ub.resize(ndof,nbr_ctrs);
    max_lb.resize(ndof);
    max_lb.setConstant(-10E9);
    min_ub.resize(ndof);
    min_ub.setConstant(10E9);
    energy_ctrs.resize(ndof);
    energy_ctrs.setZero();
    energy_lb.resize(1);
    energy_ub.resize(1);
    energy_lb.setZero();
    energy_ub.setZero();
  }
  
  
  
  
  Eigen::VectorXd getborne_low()
  {
     return max_lb ; 
  }
  
  Eigen::VectorXd getborne_up()
  {
    return min_ub ;
  }
  
  void set_matrix_ctrs_lb(int n , ...)  // function qui connaît pas encore le nombre d'argument 
  {
    const unsigned int ndof = robot()->getNrOfDegreesOfFreedom();

    va_list va;      // définir la liste des entrées
    va_start (va,n); 
    
    for (int i(0); i < n ; i ++)
    {
      Eigen::VectorXd contrainte_low;
      contrainte_low.resize(ndof);
      contrainte_low = va_arg(va, Eigen::VectorXd);
      matrix_ctrs_lb.block(0,i,ndof,1) = contrainte_low ;
     }
  }
  
  void set_matrix_ctrs_ub(int n, ...)
  {
    const unsigned int ndof = robot()->getNrOfDegreesOfFreedom();

    va_list va;      // définir la liste des entrées
    va_start (va,n); 
    
    for (int i(0); i < n ; i ++)
    {
      Eigen::VectorXd contrainte_up;
      contrainte_up.resize(ndof);
      contrainte_up = va_arg(va, Eigen::VectorXd);
      matrix_ctrs_ub.block(0,i,ndof,1) = contrainte_up ;
     }
  }
  
  void set_energy_lb(const Eigen::VectorXd& lb )
  {
    energy_lb = lb;
  }
  
  void set_energy_ub(const Eigen::VectorXd& ub )
  {
    energy_ub = ub;

  }
  
  void set_energy_ctrs(const Eigen::MatrixXd& C)
  {
    
    energy_ctrs = C.transpose();

  }
  void onUpdateAffineFunction(double current_time,double dt)
  {
    
    const unsigned int ndof = robot()->getNrOfDegreesOfFreedom();
    for (int i(0) ; i < ndof ; i++){
	max_lb[i] =  (matrix_ctrs_lb.block(i,0,1,nbr_ctrs)).maxCoeff() ;
        min_ub[i] = (matrix_ctrs_ub.block(i,0,1,nbr_ctrs)).minCoeff() ;

    }

      Eigen::MatrixXd Masse_inv;
      Masse_inv.resize(ndof,ndof);
      Masse_inv =( (robot()->getFreeFloatingMassMatrix()).block(6,6,ndof,ndof)).inverse();      
      Eigen::VectorXd f ;
      f.resize(6+ndof);
      f.setZero();
     
      f.segment(6,ndof) = /*Masse_inv**/(max_lb + min_ub)/2 /*+(lb_vec + ub_vec)/2)/2*/ ; 
       
      Eigen::MatrixXd mat_test; 
      mat_test.resize(6+ndof,6+ndof);
      mat_test.setIdentity(); 
//       mat_test.block(6,6,ndof,ndof) = Masse_inv;
      euclidianNorm().A() = mat_test;
      euclidianNorm().b() = -0.5* f;
  }
protected:
  int nbr_ctrs;
  Eigen::MatrixXd matrix_ctrs_lb, matrix_ctrs_ub;
  Eigen::VectorXd max_lb, min_ub ;  
  Eigen::VectorXd energy_lb, energy_ub ;
  Eigen::VectorXd energy_ctrs ;
  int ndof_;
};
   



     // Tâche de régularisation pour la position des articulation
   class ctrsRegTask : public RegularisationTask<ControlVariable::GeneralisedAcceleration>
{
public:

  ctrsRegTask(const string& name):RegularisationTask(name)
  {
 
      }
  
  
  
  
  void onUpdateAffineFunction(double current_time, int dt)
      {
	std::cout << "entrer dans la contrainte reg " << std::endl;
	const double n_horizon_steps(15);
	double horizon_temps = n_horizon_steps *dt ;

	const unsigned int ndof = robot()->getNrOfDegreesOfFreedom();

	// Récupérer la vitesse et la position des joints
	Eigen::VectorXd joint_vel, joint_pos; 
	joint_vel.resize(ndof);
	joint_pos.resize(ndof);
	
	joint_vel = robot()->getJointVel();
	joint_pos = robot()->getJointPos();
	
	// calculer la force de gravité + la force de coriolis 
	Eigen::VectorXd gravity_Torque ; 
	gravity_Torque.resize(ndof);
	gravity_Torque = (robot()->generalizedBiasForces()).segment(6,ndof);

	// calculer la matrice inverse    
	Eigen::MatrixXd Masse_inv ; 
	Masse_inv.resize(7,7);
	Masse_inv = ((robot()->getFreeFloatingMassMatrix()).block(6,6,ndof,ndof)).inverse();
	
	// récupérer les limites des joints position

	Eigen::VectorXd jointPosMax, jointPosMin;
	jointPosMax.resize(ndof);
	jointPosMin.resize(ndof);
	

	jointPosMin = robot()->getMinJointPos();
        jointPosMax =robot()->getMaxJointPos();
	std::cout << "jointPosMin \n" << jointPosMin.transpose() << std::endl;
	exit(EXIT_SUCCESS);
	// Calculer Delta_q qui est la différence entre qmax et qmin
	Eigen::VectorXd Delta_q; 
	Delta_q.resize(ndof);
	Delta_q = jointPosMax - jointPosMin ; 
	
	// Calculer la limite des positions des joints réduites
	Eigen::VectorXd jointPosMax_bis, jointPosMin_bis; 
	jointPosMax_bis.resize(ndof);
	jointPosMin_bis.resize(ndof);
	
	jointPosMax_bis = jointPosMax - 0.45*Delta_q ; 
	jointPosMin_bis = jointPosMin + 0.45*Delta_q;
	
	// calculer le terme f de Ex+f
	Eigen::VectorXd f ;
	f.resize(6+ndof);
	f.setZero();
	
	for (int i(0); i < ndof; i++){
	  
	  if (joint_pos[i] > jointPosMax_bis[i])
	  {
	  	      f[6+i] = (joint_vel[i] * horizon_temps + joint_pos[i] - jointPosMax_bis[i])/Delta_q[i] ; 
	  }
	  else if (joint_pos[i] < jointPosMin_bis[i])
	  {
		     f[6+i] =( joint_vel[i] * horizon_temps + joint_pos[i] - jointPosMin_bis[i])/Delta_q[i]; 
	  }
	  else
	  {
		    f[6+i] = 0;
	  }
		
      }
      
//       Calculer le terme E de Ex+f 
	Eigen::MatrixXd E ;
	E.resize(6+ndof,6+ndof);
	E.setIdentity();
	euclidianNorm().A() = E;

	euclidianNorm().b() = 2*f/(horizon_temps*horizon_temps) ;
      }
      
      
};
