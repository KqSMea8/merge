.class public Lc8/RA;
.super Ljava/lang/Object;
.source "AtlasFileLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TA;
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

.field final synthetic this$0:Lc8/TA;


# direct methods
.method constructor <init>(Lc8/TA;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V
    .locals 0
    .param p2, "mFileLock"    # Ljava/nio/channels/FileLock;
    .param p3, "mRefCount"    # I
    .param p4, "fOs"    # Ljava/io/RandomAccessFile;
    .param p5, "fChannel"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 241
    iput-object p1, p0, Lc8/RA;->this$0:Lc8/TA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lc8/RA;->mFileLock:Ljava/nio/channels/FileLock;

    .line 243
    iput p3, p0, Lc8/RA;->mRefCount:I

    .line 244
    iput-object p4, p0, Lc8/RA;->fOs:Ljava/io/RandomAccessFile;

    .line 245
    iput-object p5, p0, Lc8/RA;->fChannel:Ljava/nio/channels/FileChannel;

    .line 246
    return-void
.end method
