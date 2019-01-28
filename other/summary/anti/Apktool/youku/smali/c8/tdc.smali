.class public Lc8/tdc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initNoCaptchaUI()V
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
    .line 469
    iput-object p1, p0, Lc8/tdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lc8/tdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v0, v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/tdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v1, v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void
.end method
