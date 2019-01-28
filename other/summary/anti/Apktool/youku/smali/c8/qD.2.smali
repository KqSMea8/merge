.class public Lc8/qD;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rD;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/rD;


# direct methods
.method constructor <init>(Lc8/rD;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lc8/qD;->this$1:Lc8/rD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lc8/qD;->this$1:Lc8/rD;

    iget-object v0, v0, Lc8/rD;->this$0:Lc8/DD;

    iget-object v0, v0, Lc8/DD;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/qD;->this$1:Lc8/rD;

    iget-object v1, v1, Lc8/rD;->this$0:Lc8/DD;

    invoke-static {v1}, Lc8/DD;->access$100(Lc8/DD;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/qD;->this$1:Lc8/rD;

    iget-object v2, v2, Lc8/rD;->this$0:Lc8/DD;

    iget-object v2, v2, Lc8/DD;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lc8/SH;->saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 207
    return-void
.end method
