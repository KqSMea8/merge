.class public Lc8/TK;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WK;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WK;

.field final synthetic val$currentFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/WK;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lc8/TK;->this$0:Lc8/WK;

    iput-object p2, p0, Lc8/TK;->val$currentFilename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lc8/hL;->getSortedFiles()[Ljava/io/File;

    move-result-object v3

    .line 103
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 120
    .end local v3    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v3    # "files":[Ljava/io/File;
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v1, 0x0

    .local v1, "fileToLoad":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_0

    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    .line 107
    aget-object v0, v3, v4

    .line 108
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "filename":Ljava/lang/String;
    iget-object v5, p0, Lc8/TK;->val$currentFilename:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "Config"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    iget-object v5, p0, Lc8/TK;->this$0:Lc8/WK;

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Lc8/WK;->access$000(Lc8/WK;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 106
    .end local v2    # "filename":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 120
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileToLoad":I
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method
