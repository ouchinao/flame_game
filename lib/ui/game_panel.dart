import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flame_forge2d/flame_forge2d.dart';

class GamePanel extends Game with TapDetector{
  late SpriteAnimation enemyMons;
  late Sprite pressedButton;
  late Sprite unpressedButton;
  bool isPressed=false;
  final buttonPosition = Vector2(130,400);
  final buttonSize=Vector2(120,30);
  final monsPosotion=Vector2(140, 300);
  final monsSize=Vector2(100, 100);
  var monsPattern = ['ゴブリン.png','悪魔猫.png','おばけ1.png','おばけ2.png','おばけ3.png','おばけ4.png','おばけ5.png',
  'おばけ6.png','ゴブリンアーチャー.png','ゴブリンキング.png','ゴブリンソルジャー.png','ゴブリンマジシャン.png','ゾンビメイド.png',
  'パンプキンマン.png','パンプキンメイド.png','闇神官.png','骸骨メイド.png','骸骨王.png','骸骨子供.png','骸骨戦士1.png',
  '骸骨戦士2.png','骸骨老人.png','亡霊1.png','亡霊2.png','亡霊3.png','亡霊4.png','亡霊5.png','亡霊6.png','魔王.png','魔物.png',
  '魔物子供.png','カボチャクマ.png','クマ1.png','クマ2.png','クリーム猫.png','さすらい猫.png','サビ猫.png','シャム猫.png',
  'スイカ猫1.png','スイカ猫2.png','ドロボウ猫.png','パンダ.png','パンツ猫1.png','パンツ猫2.png','ぶち猫.png','リボン猫.png',
  '海猫.png','金メダル猫.png','工事猫.png','黒猫.png','桜アフロクマ.png','三毛猫.png','真面目猫.png','茶トラ.png','天使クマ.png',
  '天使猫.png','猫イン猫.png','麦わら猫.png','魔王猫.png','魔法使い猫.png','勇者猫.png','翼クマ.png'];
  int lottery = new math.Random().nextInt(62);
  var mosPositionNumber = [Vector2(0,0),Vector2(0,32),Vector2(0,65)];
  int lotnum = new math.Random().nextInt(3);
  var monsSpeed = 0.01*new math.Random().nextInt(50);
  @override
  Future<void> onLoad() async{
    enemyMons=await loadSpriteAnimation(
      monsPattern[lottery],
      SpriteAnimationData.sequenced(
        amount: 3,
        stepTime: monsSpeed, 
        texturePosition: mosPositionNumber[lotnum],
        textureSize: Vector2(32, 30)
        ),
    );

    unpressedButton=await loadSprite(
      'buttons.png',
      srcPosition: Vector2.zero(),
      srcSize: Vector2(60, 20),
    );

    pressedButton=await loadSprite(
      'buttons.png',
      srcPosition: Vector2(0, 20),
      srcSize: Vector2(60, 20),
    );
  }

  @override
    void onTapDown(TapDownInfo info) {
      final buttonArea = buttonPosition & buttonSize;

      isPressed = buttonArea.contains(info.eventPosition.game.toOffset());
    }

    @override
    void onTapUp(TapUpInfo info) {
      isPressed = false;
    }

  @override
  void onTapCancel(){
    isPressed=false;
  }

  @override
  void update(double dt){
    if(isPressed){
      enemyMons.update(dt);
    }
  }

  @override
  void render(Canvas canvas){
    enemyMons
      .getSprite()
      .render(canvas,position: monsPosotion,size: monsSize);
    
    final button = isPressed ? pressedButton : unpressedButton;
    button.render(canvas,position: buttonPosition,size: buttonSize);
  }

  @override
  Color backgroundColor() => const Color(0xFF1f3134);
}