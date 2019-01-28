.class public Lc8/GSb;
.super Ljava/lang/Object;
.source "CatcherManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HSb;->doScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/HSb;


# direct methods
.method constructor <init>(Lc8/HSb;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lc8/GSb;->this$1:Lc8/HSb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 433
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "jni.log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    .line 437
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 438
    const/4 v0, 0x0

    goto :goto_0
.end method
