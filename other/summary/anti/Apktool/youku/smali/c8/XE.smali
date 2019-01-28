.class public Lc8/XE;
.super Ljava/lang/Object;
.source "WVLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bF;->getLocation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bF;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Lc8/bF;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lc8/XE;->this$0:Lc8/bF;

    iput-object p2, p0, Lc8/XE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 80
    .local v0, "result":Lc8/kE;
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "no permission"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lc8/XE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 82
    return-void
.end method
