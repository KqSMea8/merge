.class public Lc8/iVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nVf;->firstScreenRenderFinished()V
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
    .line 1171
    iput-object p1, p0, Lc8/iVf;->this$0:Lc8/nVf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lc8/iVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$400(Lc8/nVf;)Lc8/OUf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/iVf;->this$0:Lc8/nVf;

    iget-object v0, v0, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1175
    const-string/jumbo v0, "onFirstScreen"

    invoke-static {v0}, Lc8/lgg;->beginSection(Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lc8/iVf;->this$0:Lc8/nVf;

    invoke-static {v0}, Lc8/nVf;->access$400(Lc8/nVf;)Lc8/OUf;

    move-result-object v0

    invoke-interface {v0}, Lc8/OUf;->onFirstScreen()V

    .line 1177
    invoke-static {}, Lc8/lgg;->endSection()V

    .line 1179
    :cond_0
    return-void
.end method
