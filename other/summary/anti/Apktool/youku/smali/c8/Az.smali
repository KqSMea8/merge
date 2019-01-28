.class public Lc8/Az;
.super Ljava/lang/Object;
.source "SecurityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "postInvalidBundle"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bz;


# direct methods
.method private constructor <init>(Lc8/Bz;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lc8/Az;->this$0:Lc8/Bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Bz;Lc8/xz;)V
    .locals 0
    .param p1, "x0"    # Lc8/Bz;
    .param p2, "x1"    # Lc8/xz;

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lc8/Az;-><init>(Lc8/Bz;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lc8/Az;->this$0:Lc8/Bz;

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v0, v1}, Lc8/Bz;->access$200(Lc8/Bz;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v1, "\u68c0\u6d4b\u5230\u5b89\u88c5\u6587\u4ef6\u88ab\u635f\u574f\uff0c\u8bf7\u5378\u8f7d\u540e\u91cd\u65b0\u5b89\u88c5\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    :cond_0
    iget-object v0, p0, Lc8/Az;->this$0:Lc8/Bz;

    iget-object v0, v0, Lc8/Bz;->shutdownProcessHandler:Lc8/zz;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lc8/zz;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    return-void
.end method
