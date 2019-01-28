.class public Lc8/edc;
.super Landroid/os/Handler;
.source "VerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 791
    iput-object p1, p0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 795
    .local v12, "data":Landroid/os/Bundle;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 796
    .local v17, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "status"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 797
    .local v21, "status":I
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 798
    .local v15, "errorCode":I
    const-string/jumbo v3, "x1"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v23

    .line 799
    .local v23, "x1":F
    const-string/jumbo v3, "y1"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v25

    .line 800
    .local v25, "y1":F
    const-string/jumbo v3, "x2"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v24

    .line 801
    .local v24, "x2":F
    const-string/jumbo v3, "y2"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v26

    .line 802
    .local v26, "y2":F
    const-string/jumbo v3, "token"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 803
    .local v22, "token":Ljava/lang/String;
    const-string/jumbo v3, "sig"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 804
    .local v20, "signature":Ljava/lang/String;
    const-string/jumbo v3, "sessionId"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 805
    .local v18, "sessionId":Ljava/lang/String;
    const-string/jumbo v3, "nc1-%s-nc2-%s-nc3-%s-nc4-%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    const/4 v5, 0x1

    aput-object v20, v4, v5

    const/4 v5, 0x2

    aput-object v18, v4, v5

    const/4 v5, 0x3

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2000()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 807
    .local v19, "sessionIdX":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1047
    :goto_0
    return-void

    .line 809
    :sswitch_0
    packed-switch v21, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 811
    :pswitch_1
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "SG_NC_INIT_START"

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :pswitch_2
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "NC_VERI_RETRY"

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lc8/Odc;->setVisibility(I)V

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Odc;->stopRotationAnimation()V

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 818
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "x1=%f,y1=%f,x2=%f,y2=%f"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Ucc;

    move-result-object v4

    const-string/jumbo v5, "MSA_slide_icon_default"

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "ali_vsdk_ball"

    const-string/jumbo v10, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v9, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Lc8/Ucc;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "ali_vsdk_frame1"

    const-string/jumbo v10, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v9, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/Qdc;->init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Lc8/Qdc;->initPostion(FF)V

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Lc8/Rdc;->initPostion(FF)V

    .line 824
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8ccccd    # 1.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f8ccccd    # 1.1f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v8

    invoke-virtual {v8}, Lc8/Rdc;->getRadius()F

    move-result v8

    add-float v8, v8, v24

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v10}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v10

    invoke-virtual {v10}, Lc8/Rdc;->getRadius()F

    move-result v10

    add-float v10, v10, v26

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 827
    .local v2, "anim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 828
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 829
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 830
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/Rdc;->setAnimation(Landroid/view/animation/Animation;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->addroot(Landroid/view/View;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->addroot(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Bdc;->cancel()V

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Bdc;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0

    .line 839
    .end local v2    # "anim":Landroid/view/animation/ScaleAnimation;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Bdc;->cancel()V

    .line 840
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "NC_INIT_SERVER_FAULT"

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 845
    const-string/jumbo v3, "sessionID"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    const/16 v5, 0x68

    invoke-virtual {v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->map2GenericCode(I)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    .line 848
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->finish()V

    .line 849
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "SG_NC_INIT_SERVER_FAULT: status=%d,token =%s,sig=%s,seesionId=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v22, v5, v8

    const/4 v8, 0x2

    aput-object v20, v5, v8

    const/4 v8, 0x3

    aput-object v18, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 856
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Bdc;->cancel()V

    .line 858
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 859
    const-string/jumbo v3, "errorCode"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    const/16 v5, 0x69

    invoke-virtual {v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->map2GenericCode(I)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    .line 862
    :cond_1
    const/16 v3, 0x4b7

    if-ne v3, v15, :cond_2

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v8, "ali_vsdk_network_error"

    const-string/jumbo v9, "string"

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v10}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 867
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->finish()V

    .line 868
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "Init stage:SG_NC_FAILED: status=%d,errorCode=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 878
    :sswitch_1
    packed-switch v21, :pswitch_data_1

    :pswitch_5
    goto/16 :goto_0

    .line 880
    :pswitch_6
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "SG_NC_VERIFY_START"

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 889
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Bdc;->cancel()V

    .line 890
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "SG_NC_VERI_SUCCEED: status=%d,token =%s,sig=%s,seesionId=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v22, v5, v8

    const/4 v8, 0x2

    aput-object v20, v5, v8

    const/4 v8, 0x3

    aput-object v18, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 898
    const-string/jumbo v3, "sessionID"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->map2GenericCode(I)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    .line 901
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lc8/Odc;->setVisibility(I)V

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Odc;->stopRotationAnimation()V

    .line 903
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "ali_vsdk_tips_finish"

    const-string/jumbo v8, "string"

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "ali_vsdk_lock_success"

    const-string/jumbo v8, "drawable"

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 906
    .local v13, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    invoke-virtual {v13, v3, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v5, v8, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v3, v3, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v4, v4, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->finishTask:Ljava/lang/Runnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 913
    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Bdc;->cancel()V

    .line 914
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "SG_NC_SERVER_FAULT: status=%d,token =%s,sig=%s,seesionId=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v22, v5, v8

    const/4 v8, 0x2

    aput-object v20, v5, v8

    const/4 v8, 0x3

    aput-object v18, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 922
    const-string/jumbo v3, "sessionID"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    const/16 v5, 0x68

    invoke-virtual {v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->map2GenericCode(I)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    .line 925
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->finish()V

    goto/16 :goto_0

    .line 928
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Bdc;->cancel()V

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Bdc;->start()Landroid/os/CountDownTimer;

    .line 930
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "NC_VERI_RETRY"

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lc8/Odc;->setVisibility(I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Odc;->stopRotationAnimation()V

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 934
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "SG_NC_RETRY:x1=%f,y1=%f,x2=%f,y2=%f"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Lc8/Qdc;->initPostion(FF)V

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Lc8/Rdc;->initPostion(FF)V

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->addroot(Landroid/view/View;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->addroot(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto/16 :goto_0

    .line 945
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Bdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Bdc;->cancel()V

    .line 947
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 948
    const-string/jumbo v3, "errorCode"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    const/16 v5, 0x69

    invoke-virtual {v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->map2GenericCode(I)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    .line 952
    :cond_5
    const/16 v3, 0x4b7

    if-ne v3, v15, :cond_6

    .line 953
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v8, "ali_vsdk_network_error"

    const-string/jumbo v9, "string"

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v10}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 958
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->finish()V

    .line 959
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "Verify stage:SG_NC_FAILED: status=%d,errorCode=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 971
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lc8/Rdc;->setStatus(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->invalidate()V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lc8/Qdc;->setStatus(I)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Rdc;->getCenterX()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Rdc;->getCenterY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lc8/Qdc;->setPositionFinish(FF)V

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Qdc;->invalidate()V

    .line 976
    const/16 v3, 0x2712

    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lc8/edc;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 979
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lc8/Rdc;->setStatus(I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->invalidate()V

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lc8/Qdc;->setStatus(I)V

    .line 982
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Rdc;->getCenterX1()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Rdc;->getCenterY1()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lc8/Qdc;->setPositionEnd(FF)V

    .line 983
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Qdc;->invalidate()V

    .line 984
    const/16 v3, 0x2713

    const-wide/16 v4, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lc8/edc;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 988
    :sswitch_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2000()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;->noCaptchaVerification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 989
    :catch_0
    move-exception v14

    .line 990
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 994
    .end local v14    # "e":Ljava/lang/Exception;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lc8/Rdc;->setStatus(I)V

    .line 995
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->invalidate()V

    goto/16 :goto_0

    .line 998
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lc8/Rdc;->setStatus(I)V

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->invalidate()V

    goto/16 :goto_0

    .line 1002
    :sswitch_7
    const-string/jumbo v3, "VerifyActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INIT_START root.getTop(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " root.getBottom(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "ali_vsdk_frame"

    const-string/jumbo v8, "drawable"

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1009
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    const/16 v16, 0x122

    .line 1011
    .local v16, "radius":I
    if-eqz v11, :cond_7

    .line 1012
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 1014
    :cond_7
    const-string/jumbo v3, "VerifyActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INIT_START radius: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    if-gtz v3, :cond_9

    .line 1017
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2700()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x70

    move/from16 v0, v16

    if-le v3, v0, :cond_8

    .line 1018
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2700()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x70

    sub-int v7, v3, v16

    .line 1030
    .local v7, "height":I
    :goto_1
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$500()I

    move-result v3

    move/from16 v0, v16

    if-le v3, v0, :cond_b

    .line 1031
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$500()I

    move-result v3

    sub-int v6, v3, v16

    .line 1036
    .local v6, "width":I
    :goto_2
    const-string/jumbo v3, "VerifyActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INIT_START width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2000()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x5

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v9, v9, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2800()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v3 .. v10}, Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;->initNoCaptcha(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1040
    :catch_1
    move-exception v14

    .line 1041
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1020
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2700()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v7, v3, -0x70

    .restart local v7    # "height":I
    goto :goto_1

    .line 1023
    .end local v7    # "height":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    move/from16 v0, v16

    if-le v3, v0, :cond_a

    .line 1024
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v7, v3, v16

    .restart local v7    # "height":I
    goto/16 :goto_1

    .line 1026
    .end local v7    # "height":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/edc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    sub-int v7, v3, v4

    .restart local v7    # "height":I
    goto/16 :goto_1

    .line 1033
    :cond_b
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$500()I

    move-result v6

    .restart local v6    # "width":I
    goto/16 :goto_2

    .line 807
    .line 809
    .line 878
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x2710 -> :sswitch_7
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_3
        0x2713 -> :sswitch_4
        0x186a1 -> :sswitch_5
        0x186a2 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
