.class public Lc8/KGd;
.super Ljava/lang/Object;
.source "EncryptionWriter.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/MGd;->checkFileCount(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/MGd;


# direct methods
.method constructor <init>(Lc8/MGd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/MGd;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/KGd;->this$0:Lc8/MGd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/KGd;->this$0:Lc8/MGd;

    invoke-static {v1}, Lc8/MGd;->access$000(Lc8/MGd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
