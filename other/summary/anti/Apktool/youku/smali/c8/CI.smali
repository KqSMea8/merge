.class public Lc8/CI;
.super Ljava/lang/Object;
.source "WVWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EI;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/EI;


# direct methods
.method constructor <init>(Lc8/EI;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lc8/CI;->this$1:Lc8/EI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lc8/CI;->this$1:Lc8/EI;

    iget-object v0, v0, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v0, v0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 521
    return-void
.end method
