.class public Lc8/uLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lc8/ly;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 270
    iput-object p1, p0, Lc8/uLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 4

    .prologue
    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/VLj;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\uff1acommonbundle\u5f02\u6b65\u5b89\u88c5\u7ed3\u675f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    :try_start_0
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v2

    const-string/jumbo v3, "com.youku.phone.commonbundle"

    invoke-virtual {v2, v3}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    .line 276
    .local v0, "commonBundle":Lc8/Seq;
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Lc8/Seq;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "commonBundle":Lc8/Seq;
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
