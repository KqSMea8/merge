.class public Lc8/YD;
.super Ljava/lang/Object;
.source "WVBridgeEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZD;->nativeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZD;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$wvCallMethodContext:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;


# direct methods
.method constructor <init>(Lc8/ZD;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lc8/YD;->this$0:Lc8/ZD;

    iput-object p2, p0, Lc8/YD;->val$wvCallMethodContext:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iput-object p3, p0, Lc8/YD;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v0

    iget-object v1, p0, Lc8/YD;->val$wvCallMethodContext:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iget-object v2, p0, Lc8/YD;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/fE;->callMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    .line 66
    return-void
.end method
