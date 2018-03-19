#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"
//#include "extensions/cocos-ext.h"
#include "ui/CocosGUI.h"

using namespace cocos2d;

class HelloWorld
	: public cocos2d::Scene
{
	public:
		virtual bool init();  

		static HelloWorld* create();
    
		// a selector callback
		void menuCloseCallback(Ref *pSender);
};

#endif // __HELLOWORLD_SCENE_H__
