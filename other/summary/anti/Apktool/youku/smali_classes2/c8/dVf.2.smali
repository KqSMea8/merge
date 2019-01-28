.class public Lc8/dVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nVf;->onCreateFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nVf;


# direct methods
.method constructor <init>(Lc8/nVf;)V
    .locals 0

    .prologue
    .line 1008
    iput-object p1, p0, Lc8/dVf;->this$0:Lc8/nVf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1012
    iget-object v1, p0, Lc8/dVf;->this$0:Lc8/nVf;

    iget-object v1, v1, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1013
    iget-object v1, p0, Lc8/dVf;->this$0:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->onViewAppear()V

    .line 1014
    iget-object v1, p0, Lc8/dVf;->this$0:Lc8/nVf;

    invoke-static {v1}, Lc8/nVf;->access$200(Lc8/nVf;)Lc8/TUf;

    move-result-object v0

    .line 1015
    .local v0, "wxView":Landroid/view/View;
    iget-object v1, p0, Lc8/dVf;->this$0:Lc8/nVf;

    invoke-static {v1}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lc8/dVf;->this$0:Lc8/nVf;

    invoke-static {v1}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v1

    iget-object v2, p0, Lc8/dVf;->this$0:Lc8/nVf;

    invoke-interface {v1, v2, v0}, Lc8/NUf;->onViewCreated(Lc8/nVf;Landroid/view/View;)V

    .line 1018
    :cond_0
    iget-object v1, p0, Lc8/dVf;->this$0:Lc8/nVf;

    invoke-static {v1}, Lc8/nVf;->access$400(Lc8/nVf;)Lc8/OUf;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1019
    iget-object v1, p0, Lc8/dVf;->this$0:Lc8/nVf;

    invoke-static {v1}, Lc8/nVf;->access$400(Lc8/nVf;)Lc8/OUf;

    move-result-object v1

    invoke-interface {v1}, Lc8/OUf;->onFirstView()V

    .line 1022
    .end local v0    # "wxView":Landroid/view/View;
    :cond_1
    return-void
.end method
