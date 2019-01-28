.class public Lc8/adc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initCallUI()V
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
    .line 621
    iput-object p1, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "id"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 624
    iget-object v2, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    .line 625
    iget-object v2, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "submit"

    const-string/jumbo v4, "id"

    iget-object v5, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq p2, v2, :cond_0

    if-nez p2, :cond_1

    .line 626
    :cond_0
    iget-object v2, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 627
    iget-object v0, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v2, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "ali_vsdk_verify_no_code"

    const-string/jumbo v4, "string"

    iget-object v5, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 635
    :cond_1
    :goto_0
    return v0

    .line 631
    :cond_2
    iget-object v2, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1500(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 632
    iget-object v0, p0, Lc8/adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    move v0, v1

    .line 633
    goto :goto_0
.end method
