.class public Lc8/DE;
.super Ljava/lang/Object;
.source "WVCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HE;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HE;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/HE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lc8/DE;->this$0:Lc8/HE;

    iput-object p2, p0, Lc8/DE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iput-object p3, p0, Lc8/DE;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lc8/DE;->this$0:Lc8/HE;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/HE;->access$002(Lc8/HE;Z)Z

    .line 78
    iget-object v0, p0, Lc8/DE;->this$0:Lc8/HE;

    iget-object v1, p0, Lc8/DE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v2, p0, Lc8/DE;->val$params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/HE;->takePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 79
    return-void
.end method
