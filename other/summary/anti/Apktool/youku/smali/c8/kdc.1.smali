.class public Lc8/kdc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Lc8/Kdc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ldc;->downloadFinished(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lc8/ldc;


# direct methods
.method constructor <init>(Lc8/ldc;)V
    .locals 0

    .prologue
    .line 1430
    iput-object p1, p0, Lc8/kdc;->this$2:Lc8/ldc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unzipFinished(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "outputFile"    # Ljava/io/File;

    .prologue
    .line 1438
    const-string/jumbo v0, "VerifyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update resources finished! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v0, p0, Lc8/kdc;->this$2:Lc8/ldc;

    iget-object v0, v0, Lc8/ldc;->this$1:Lc8/mdc;

    iget-object v0, v0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lc8/kdc;->this$2:Lc8/ldc;

    iget-object v2, v2, Lc8/ldc;->val$newVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1442
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1444
    :cond_0
    iget-object v0, p0, Lc8/kdc;->this$2:Lc8/ldc;

    iget-object v0, v0, Lc8/ldc;->this$1:Lc8/mdc;

    iget-object v0, v0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v0, v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    const v1, 0x186ba

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1445
    return-void
.end method

.method public unzipStart()V
    .locals 0

    .prologue
    .line 1434
    return-void
.end method
