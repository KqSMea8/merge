.class public Lc8/gVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nVf;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nVf;

.field final synthetic val$errCode:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lc8/gVf;->this$0:Lc8/nVf;

    iput-object p2, p0, Lc8/gVf;->val$errCode:Ljava/lang/String;

    iput-object p3, p0, Lc8/gVf;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1106
    iget-object v0, p0, Lc8/gVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gVf;->this$0:Lc8/nVf;

    iget-object v0, v0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lc8/gVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v0

    iget-object v1, p0, Lc8/gVf;->this$0:Lc8/nVf;

    iget-object v2, p0, Lc8/gVf;->val$errCode:Ljava/lang/String;

    iget-object v3, p0, Lc8/gVf;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lc8/NUf;->onException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :cond_0
    return-void
.end method
