
#include <orca/orca.h>
#include <gazebo/gazebo.hh>
#include <gazebo/common/common.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/gazebo_client.hh>
#include <sdf/parser_urdf.hh>
#include <fstream>
#include <thread>
#include <iostream>
#include <fstream>


Eigen::MatrixXd MatrixToPointage(Eigen::MatrixXd T, Eigen::Vector3d Pos_laser)
{
	  
	  
	  
	  Eigen::Vector3d Z_P ;
	  Z_P << 0,0,1;		// This vector define the vector Z in the base of end-effector
	  
	  Eigen::Vector3d Pose_laser;
	  Pose_laser = Pos_laser;     

	  
	  Eigen::Vector3d Z_7;		// This vector define Z in the base 
	  Z_7 = (T.block(0,0,3,3))*Z_P;
	  Z_7.normalize();
	  Eigen::Vector3d OM, Pose_ee;		// The projection of the end-effector in the plan of base 
	  Pose_ee = T.block(0,3,3,1);
	  OM[0] = Pose_ee[0] + Z_7[0]*(0.013-Pose_ee[2])/Z_7[2];
	  OM[1] = Pose_ee[1] + Z_7[1]*(0.013-Pose_ee[2])/Z_7[2];
	  OM[2] = Pose_laser[2];
	  
	  Eigen::Vector3d Z_des;		// Compute the Z desired		
	  Z_des = (-Pose_ee + Pose_laser) ;
	  Z_des.normalize();
	  Eigen::Vector3d Z_P_O;
	  Z_P_O = T.block(0,0,3,3)*Z_P;
	  Z_P_O.normalize();
	  double theta =- acos(Z_des.dot(Z_P_O));
	  Eigen::Vector3d axe_rot = Z_des.cross(Z_P_O);
	  double norm;
	  norm = axe_rot.norm();
	  axe_rot.normalize();
	  double x,y,z;
	  x = axe_rot[0];
	  y = axe_rot[1];
	  z = axe_rot[2];
	  Eigen::Matrix<double,3,3>mat, rot_base, Id;
	  mat.setZero();

	  // Rotation de Rodrigue
	
	  mat << 0, -axe_rot[2], axe_rot[1] ,
		      axe_rot[2], 0,  -axe_rot[0],
		      -axe_rot[1], axe_rot[0], 0; 
	  Id.setIdentity();	     
	  mat = Id + sin(theta)*mat + (1 - cos(theta))*mat*mat;
	
	
	  return mat*T.block(0,0,3,3);
    }