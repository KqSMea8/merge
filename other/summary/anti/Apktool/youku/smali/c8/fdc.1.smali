.class public Lc8/fdc;
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
    .line 1054
    iput-object p1, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 1057
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1058
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1060
    :pswitch_0
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2900(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Ucc;

    move-result-object v4

    const-string/jumbo v5, "MSA_submit_button_waiting"

    iget-object v6, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v6}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "ali_vsdk_verify_in_progress"

    const-string/jumbo v8, "string"

    iget-object v9, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lc8/Ucc;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3000(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    invoke-virtual {v3, v10}, Lc8/Odc;->setVisibility(I)V

    .line 1062
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3000(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Odc;->startRotationAnimation()V

    .line 1063
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v4, v4, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->verificationRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1066
    :pswitch_1
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2900(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "ali_vsdk_verify_submit"

    const-string/jumbo v6, "string"

    iget-object v7, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v7}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1067
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3000(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    invoke-virtual {v3, v9}, Lc8/Odc;->setVisibility(I)V

    .line 1068
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3000(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Odc;->stopRotationAnimation()V

    .line 1069
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1071
    const-string/jumbo v3, "sessionID"

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    invoke-interface {v3, v8, v2}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    .line 1074
    :cond_1
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->finish()V

    goto/16 :goto_0

    .line 1077
    :pswitch_2
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1078
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    :cond_2
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2900(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "ali_vsdk_verify_submit"

    const-string/jumbo v6, "string"

    iget-object v7, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v7}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1081
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3000(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    invoke-virtual {v3, v9}, Lc8/Odc;->setVisibility(I)V

    .line 1082
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3000(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Odc;->stopRotationAnimation()V

    .line 1083
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1084
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1085
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1086
    :cond_3
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1200()Lcom/alibaba/verificationsdk/ui/VerifyType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/verificationsdk/ui/VerifyType;->SMS:Lcom/alibaba/verificationsdk/ui/VerifyType;

    if-ne v3, v4, :cond_5

    .line 1087
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "ali_vsdk_verify_error"

    const-string/jumbo v6, "string"

    iget-object v7, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v7}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1090
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->values()[Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v3, v4

    .line 1091
    .local v0, "error_type":Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;
    sget-object v3, Lc8/odc;->$SwitchMap$com$alibaba$verificationsdk$ui$VerifyActivity$ERROR_TYPE:[I

    invoke-virtual {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 1107
    :goto_2
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3406()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1108
    const-string/jumbo v3, "code"

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    const-string/jumbo v3, "sessionID"

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v3

    invoke-interface {v3, v10, v2}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    goto/16 :goto_0

    .line 1088
    .end local v0    # "error_type":Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;
    :cond_5
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1200()Lcom/alibaba/verificationsdk/ui/VerifyType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/verificationsdk/ui/VerifyType;->CALL:Lcom/alibaba/verificationsdk/ui/VerifyType;

    if-ne v3, v4, :cond_4

    .line 1089
    iget-object v3, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "ali_vsdk_verify_error_call"

    const-string/jumbo v6, "string"

    iget-object v7, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v7}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1093
    .restart local v0    # "error_type":Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 1094
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "sub_msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-string/jumbo v3, "errorMsg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sub_msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1099
    .end local v1    # "json":Lorg/json/JSONObject;
    :pswitch_4
    const-string/jumbo v4, "VerifyActivity"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_3
    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string/jumbo v4, "errorMsg"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1099
    :cond_6
    const-string/jumbo v3, ""

    goto :goto_3

    .line 1103
    :pswitch_5
    const-string/jumbo v3, "VerifyActivity"

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v5, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "ali_vsdk_verify_error"

    const-string/jumbo v7, "string"

    iget-object v8, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string/jumbo v3, "errorMsg"

    iget-object v4, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v5, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "ali_vsdk_verify_error"

    const-string/jumbo v7, "string"

    iget-object v8, p0, Lc8/fdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v8}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1058
    .line 1091
    nop

    :pswitch_data_0
    .packed-switch 0x186a3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
