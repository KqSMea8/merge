.class public Lc8/YE;
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

.field final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/bF;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lc8/YE;->this$0:Lc8/bF;

    iput-object p2, p0, Lc8/YE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iput-object p3, p0, Lc8/YE;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lc8/YE;->this$0:Lc8/bF;

    iget-object v1, p0, Lc8/YE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v2, p0, Lc8/YE;->val$param:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/bF;->requestLocation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 75
    return-void
.end method
