.class public Lc8/pD;
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
    .line 209
    iput-object p1, p0, Lc8/pD;->this$1:Lc8/rD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lc8/pD;->this$1:Lc8/rD;

    iget-object v0, v0, Lc8/rD;->this$0:Lc8/DD;

    iget-object v0, v0, Lc8/DD;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    return-void
.end method
