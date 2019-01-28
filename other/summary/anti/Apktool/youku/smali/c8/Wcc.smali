.class public Lc8/Wcc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initSMSUI()V
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
    .line 547
    iput-object p1, p0, Lc8/Wcc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 550
    iget-object v0, p0, Lc8/Wcc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Cdc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lc8/Wcc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Cdc;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Cdc;->cancel()V

    .line 553
    :cond_0
    iget-object v0, p0, Lc8/Wcc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyType;->CALL:Lcom/alibaba/verificationsdk/ui/VerifyType;

    invoke-virtual {v0, v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initUI(Lcom/alibaba/verificationsdk/ui/VerifyType;)V

    .line 554
    return-void
.end method
