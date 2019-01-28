.class public Lc8/DA;
.super Ljava/lang/Object;
.source "KernalFileLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/EA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileLockCount"
.end annotation


# instance fields
.field fChannel:Ljava/nio/channels/FileChannel;

.field fOs:Ljava/io/RandomAccessFile;

.field mFileLock:Ljava/nio/channels/FileLock;

.field mRefCount:I

.field final synthetic this$0:Lc8/EA;


# direct methods
.method constructor <init>(Lc8/EA;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V
    .locals 0
    .param p2, "mFileLock"    # Ljava/nio/channels/FileLock;
    .param p3, "mRefCount"    # I
    .param p4, "fOs"    # Ljava/io/RandomAccessFile;
    .param p5, "fChannel"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 236
    iput-object p1, p0, Lc8/DA;->this$0:Lc8/EA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lc8/DA;->mFileLock:Ljava/nio/channels/FileLock;

    .line 238
    iput p3, p0, Lc8/DA;->mRefCount:I

    .line 239
    iput-object p4, p0, Lc8/DA;->fOs:Ljava/io/RandomAccessFile;

    .line 240
    iput-object p5, p0, Lc8/DA;->fChannel:Ljava/nio/channels/FileChannel;

    .line 241
    return-void
.end method
