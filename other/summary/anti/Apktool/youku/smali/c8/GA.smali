.class public Lc8/GA;
.super Ljava/lang/Object;
.source "BundleReleaser.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KA;->dexOptimization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KA;


# direct methods
.method constructor <init>(Lc8/KA;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KA;

    .prologue
    .line 421
    iput-object p1, p0, Lc8/GA;->this$0:Lc8/KA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "pathname"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-static {}, Lc8/LA;->isArt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/GA;->this$0:Lc8/KA;

    invoke-static {v0}, Lc8/KA;->access$100(Lc8/KA;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    const-string/jumbo v0, ".dex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 427
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, ".zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
