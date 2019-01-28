.class public final Lc8/nTe;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/lTe;,
        Lc8/kTe;,
        Lc8/mTe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field private static final NULL_SINK:Lc8/tWp;


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private closed:Z

.field private final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fileSystem:Lc8/fVe;

.field private hasJournalErrors:Z

.field private initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Lc8/ZVp;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/lTe;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lc8/nTe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/nTe;->$assertionsDisabled:Z

    .line 95
    const-string/jumbo v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/nTe;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 809
    new-instance v0, Lc8/iTe;

    invoke-direct {v0}, Lc8/iTe;-><init>()V

    sput-object v0, Lc8/nTe;->NULL_SINK:Lc8/tWp;

    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lc8/fVe;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 7
    .param p1, "fileSystem"    # Lc8/fVe;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "appVersion"    # I
    .param p4, "valueCount"    # I
    .param p5, "maxSize"    # J
    .param p7, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const-wide/16 v4, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide v4, p0, Lc8/nTe;->size:J

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    .line 164
    iput-wide v4, p0, Lc8/nTe;->nextSequenceNumber:J

    .line 168
    new-instance v0, Lc8/gTe;

    invoke-direct {v0, p0}, Lc8/gTe;-><init>(Lc8/nTe;)V

    iput-object v0, p0, Lc8/nTe;->cleanupRunnable:Ljava/lang/Runnable;

    .line 189
    iput-object p1, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    .line 190
    iput-object p2, p0, Lc8/nTe;->directory:Ljava/io/File;

    .line 191
    iput p3, p0, Lc8/nTe;->appVersion:I

    .line 192
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/nTe;->journalFile:Ljava/io/File;

    .line 193
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/nTe;->journalFileTmp:Ljava/io/File;

    .line 194
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/nTe;->journalFileBackup:Ljava/io/File;

    .line 195
    iput p4, p0, Lc8/nTe;->valueCount:I

    .line 196
    iput-wide p5, p0, Lc8/nTe;->maxSize:J

    .line 197
    iput-object p7, p0, Lc8/nTe;->executor:Ljava/util/concurrent/Executor;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lc8/nTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/nTe;

    .prologue
    .line 88
    iget-boolean v0, p0, Lc8/nTe;->initialized:Z

    return v0
.end method

.method static synthetic access$100(Lc8/nTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/nTe;

    .prologue
    .line 88
    iget-boolean v0, p0, Lc8/nTe;->closed:Z

    return v0
.end method

.method static synthetic access$200(Lc8/nTe;)V
    .locals 0
    .param p0, "x0"    # Lc8/nTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lc8/nTe;->trimToSize()V

    return-void
.end method

.method static synthetic access$2200(Lc8/nTe;Ljava/lang/String;J)Lc8/kTe;
    .locals 2
    .param p0, "x0"    # Lc8/nTe;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lc8/nTe;->edit(Ljava/lang/String;J)Lc8/kTe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lc8/nTe;)I
    .locals 1
    .param p0, "x0"    # Lc8/nTe;

    .prologue
    .line 88
    iget v0, p0, Lc8/nTe;->valueCount:I

    return v0
.end method

.method static synthetic access$2400(Lc8/nTe;)Lc8/fVe;
    .locals 1
    .param p0, "x0"    # Lc8/nTe;

    .prologue
    .line 88
    iget-object v0, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    return-object v0
.end method

.method static synthetic access$2500()Lc8/tWp;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lc8/nTe;->NULL_SINK:Lc8/tWp;

    return-object v0
.end method

.method static synthetic access$2600(Lc8/nTe;Lc8/kTe;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/nTe;
    .param p1, "x1"    # Lc8/kTe;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lc8/nTe;->completeEdit(Lc8/kTe;Z)V

    return-void
.end method

.method static synthetic access$2700(Lc8/nTe;Lc8/lTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/nTe;
    .param p1, "x1"    # Lc8/lTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lc8/nTe;->removeEntry(Lc8/lTe;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lc8/nTe;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/nTe;

    .prologue
    .line 88
    iget-object v0, p0, Lc8/nTe;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lc8/nTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/nTe;

    .prologue
    .line 88
    invoke-direct {p0}, Lc8/nTe;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lc8/nTe;)V
    .locals 0
    .param p0, "x0"    # Lc8/nTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lc8/nTe;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$502(Lc8/nTe;I)I
    .locals 0
    .param p0, "x0"    # Lc8/nTe;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lc8/nTe;->redundantOpCount:I

    return p1
.end method

.method static synthetic access$602(Lc8/nTe;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/nTe;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lc8/nTe;->hasJournalErrors:Z

    return p1
.end method

.method private declared-synchronized checkNotClosed()V
    .locals 2

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/nTe;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 632
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized completeEdit(Lc8/kTe;Z)V
    .locals 12
    .param p1, "editor"    # Lc8/kTe;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lc8/kTe;->access$1700(Lc8/kTe;)Lc8/lTe;

    move-result-object v2

    .line 516
    .local v2, "entry":Lc8/lTe;
    invoke-static {v2}, Lc8/lTe;->access$900(Lc8/lTe;)Lc8/kTe;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 517
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .end local v2    # "entry":Lc8/lTe;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 521
    .restart local v2    # "entry":Lc8/lTe;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lc8/lTe;->access$800(Lc8/lTe;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 522
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lc8/nTe;->valueCount:I

    if-ge v3, v8, :cond_4

    .line 523
    invoke-static {p1}, Lc8/kTe;->access$1800(Lc8/kTe;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 524
    invoke-virtual {p1}, Lc8/kTe;->abort()V

    .line 525
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Newly created entry didn\'t create value for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 527
    :cond_1
    iget-object v8, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    invoke-static {v2}, Lc8/lTe;->access$1400(Lc8/lTe;)[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Lc8/fVe;->exists(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 528
    invoke-virtual {p1}, Lc8/kTe;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 522
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    :try_start_2
    iget v8, p0, Lc8/nTe;->valueCount:I

    if-ge v3, v8, :cond_7

    .line 535
    invoke-static {v2}, Lc8/lTe;->access$1400(Lc8/lTe;)[Ljava/io/File;

    move-result-object v8

    aget-object v1, v8, v3

    .line 536
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    .line 537
    iget-object v8, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    invoke-interface {v8, v1}, Lc8/fVe;->exists(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 538
    invoke-static {v2}, Lc8/lTe;->access$1300(Lc8/lTe;)[Ljava/io/File;

    move-result-object v8

    aget-object v0, v8, v3

    .line 539
    .local v0, "clean":Ljava/io/File;
    iget-object v8, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    invoke-interface {v8, v1, v0}, Lc8/fVe;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 540
    invoke-static {v2}, Lc8/lTe;->access$1200(Lc8/lTe;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 541
    .local v6, "oldLength":J
    iget-object v8, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    invoke-interface {v8, v0}, Lc8/fVe;->size(Ljava/io/File;)J

    move-result-wide v4

    .line 542
    .local v4, "newLength":J
    invoke-static {v2}, Lc8/lTe;->access$1200(Lc8/lTe;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 543
    iget-wide v8, p0, Lc8/nTe;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lc8/nTe;->size:J

    .line 534
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 546
    :cond_6
    iget-object v8, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    invoke-interface {v8, v1}, Lc8/fVe;->delete(Ljava/io/File;)V

    goto :goto_3

    .line 550
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lc8/nTe;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lc8/nTe;->redundantOpCount:I

    .line 551
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lc8/lTe;->access$902(Lc8/lTe;Lc8/kTe;)Lc8/kTe;

    .line 552
    invoke-static {v2}, Lc8/lTe;->access$800(Lc8/lTe;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 553
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lc8/lTe;->access$802(Lc8/lTe;Z)Z

    .line 554
    iget-object v8, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    const-string/jumbo v9, "CLEAN"

    invoke-interface {v8, v9}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v8

    const/16 v9, 0x20

    invoke-interface {v8, v9}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 555
    iget-object v8, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    invoke-static {v2}, Lc8/lTe;->access$1500(Lc8/lTe;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 556
    iget-object v8, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    invoke-virtual {v2, v8}, Lc8/lTe;->writeLengths(Lc8/ZVp;)V

    .line 557
    iget-object v8, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 558
    if-eqz p2, :cond_8

    .line 559
    iget-wide v8, p0, Lc8/nTe;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lc8/nTe;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lc8/lTe;->access$1602(Lc8/lTe;J)J

    .line 567
    :cond_8
    :goto_4
    iget-object v8, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    invoke-interface {v8}, Lc8/ZVp;->flush()V

    .line 569
    iget-wide v8, p0, Lc8/nTe;->size:J

    iget-wide v10, p0, Lc8/nTe;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    invoke-direct {p0}, Lc8/nTe;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 570
    :cond_9
    iget-object v8, p0, Lc8/nTe;->executor:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Lc8/nTe;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 562
    :cond_a
    iget-object v8, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lc8/lTe;->access$1500(Lc8/lTe;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v8, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    const-string/jumbo v9, "REMOVE"

    invoke-interface {v8, v9}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v8

    const/16 v9, 0x20

    invoke-interface {v8, v9}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 564
    iget-object v8, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    invoke-static {v2}, Lc8/lTe;->access$1500(Lc8/lTe;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 565
    iget-object v8, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public static create(Lc8/fVe;Ljava/io/File;IIJ)Lc8/nTe;
    .locals 12
    .param p0, "fileSystem"    # Lc8/fVe;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    .line 247
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-gtz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxSize <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    if-gtz p3, :cond_1

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "valueCount <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "OkHttp DiskLruCache"

    const/4 v8, 0x1

    .line 256
    invoke-static {v0, v8}, Lc8/ATe;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 258
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Lc8/nTe;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lc8/nTe;-><init>(Lc8/fVe;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v3
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lc8/kTe;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 450
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/nTe;->initialize()V

    .line 452
    invoke-direct {p0}, Lc8/nTe;->checkNotClosed()V

    .line 453
    invoke-direct {p0, p1}, Lc8/nTe;->validateKey(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/lTe;

    .line 455
    .local v1, "entry":Lc8/lTe;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 456
    invoke-static {v1}, Lc8/lTe;->access$1600(Lc8/lTe;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 477
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 459
    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {v1}, Lc8/lTe;->access$900(Lc8/lTe;)Lc8/kTe;

    move-result-object v2

    if-nez v2, :cond_0

    .line 464
    :cond_2
    iget-object v2, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    const-string/jumbo v3, "DIRTY"

    invoke-interface {v2, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    move-result-object v2

    invoke-interface {v2, p1}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 465
    iget-object v2, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    invoke-interface {v2}, Lc8/ZVp;->flush()V

    .line 467
    iget-boolean v2, p0, Lc8/nTe;->hasJournalErrors:Z

    if-nez v2, :cond_0

    .line 471
    if-nez v1, :cond_3

    .line 472
    new-instance v1, Lc8/lTe;

    .end local v1    # "entry":Lc8/lTe;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lc8/lTe;-><init>(Lc8/nTe;Ljava/lang/String;Lc8/gTe;)V

    .line 473
    .restart local v1    # "entry":Lc8/lTe;
    iget-object v2, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_3
    new-instance v0, Lc8/kTe;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lc8/kTe;-><init>(Lc8/nTe;Lc8/lTe;Lc8/gTe;)V

    .line 476
    .local v0, "editor":Lc8/kTe;
    invoke-static {v1, v0}, Lc8/lTe;->access$902(Lc8/lTe;Lc8/kTe;)Lc8/kTe;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    .end local v0    # "editor":Lc8/kTe;
    .end local v1    # "entry":Lc8/lTe;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .prologue
    .line 580
    iget v0, p0, Lc8/nTe;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lc8/nTe;->redundantOpCount:I

    iget-object v1, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    .line 581
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newJournalWriter()Lc8/ZVp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v2, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v3, p0, Lc8/nTe;->journalFile:Ljava/io/File;

    invoke-interface {v2, v3}, Lc8/fVe;->appendingSink(Ljava/io/File;)Lc8/tWp;

    move-result-object v1

    .line 302
    .local v1, "fileSink":Lc8/tWp;
    new-instance v0, Lc8/hTe;

    invoke-direct {v0, p0, v1}, Lc8/hTe;-><init>(Lc8/nTe;Lc8/tWp;)V

    .line 308
    .local v0, "faultHidingSink":Lc8/tWp;
    invoke-static {v0}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;

    move-result-object v2

    return-object v2
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v3, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v4, p0, Lc8/nTe;->journalFileTmp:Ljava/io/File;

    invoke-interface {v3, v4}, Lc8/fVe;->delete(Ljava/io/File;)V

    .line 356
    iget-object v3, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 357
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lTe;

    .line 358
    .local v0, "entry":Lc8/lTe;
    invoke-static {v0}, Lc8/lTe;->access$900(Lc8/lTe;)Lc8/kTe;

    move-result-object v3

    if-nez v3, :cond_1

    .line 359
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lc8/nTe;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 360
    iget-wide v4, p0, Lc8/nTe;->size:J

    invoke-static {v0}, Lc8/lTe;->access$1200(Lc8/lTe;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lc8/nTe;->size:J

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 363
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lc8/lTe;->access$902(Lc8/lTe;Lc8/kTe;)Lc8/kTe;

    .line 364
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lc8/nTe;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 365
    iget-object v3, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    invoke-static {v0}, Lc8/lTe;->access$1300(Lc8/lTe;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lc8/fVe;->delete(Ljava/io/File;)V

    .line 366
    iget-object v3, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    invoke-static {v0}, Lc8/lTe;->access$1400(Lc8/lTe;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lc8/fVe;->delete(Ljava/io/File;)V

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 368
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 371
    .end local v0    # "entry":Lc8/lTe;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v7, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v8, p0, Lc8/nTe;->journalFile:Ljava/io/File;

    invoke-interface {v7, v8}, Lc8/fVe;->source(Ljava/io/File;)Lc8/uWp;

    move-result-object v7

    invoke-static {v7}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v4

    .line 264
    .local v4, "source":Lc8/aWp;
    :try_start_0
    invoke-interface {v4}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "magic":Ljava/lang/String;
    invoke-interface {v4}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "version":Ljava/lang/String;
    invoke-interface {v4}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-interface {v4}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-interface {v4}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "blank":Ljava/lang/String;
    const-string/jumbo v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "1"

    .line 270
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lc8/nTe;->appVersion:I

    .line 271
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lc8/nTe;->valueCount:I

    .line 272
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    .line 273
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 274
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "magic":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v4}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 278
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 281
    .local v2, "lineCount":I
    :goto_0
    :try_start_1
    invoke-interface {v4}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/nTe;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v7

    :try_start_2
    iget-object v7, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v2, v7

    iput v7, p0, Lc8/nTe;->redundantOpCount:I

    .line 290
    invoke-interface {v4}, Lc8/aWp;->exhausted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 291
    invoke-direct {p0}, Lc8/nTe;->rebuildJournal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :goto_1
    invoke-static {v4}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    return-void

    .line 293
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lc8/nTe;->newJournalWriter()Lc8/ZVp;

    move-result-object v7

    iput-object v7, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 312
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 313
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 314
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 318
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 320
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 321
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string/jumbo v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 323
    iget-object v6, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 327
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lTe;

    .line 331
    .local v0, "entry":Lc8/lTe;
    if-nez v0, :cond_4

    .line 332
    new-instance v0, Lc8/lTe;

    .end local v0    # "entry":Lc8/lTe;
    invoke-direct {v0, p0, v2, v8}, Lc8/lTe;-><init>(Lc8/nTe;Ljava/lang/String;Lc8/gTe;)V

    .line 333
    .restart local v0    # "entry":Lc8/lTe;
    iget-object v6, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_4
    if-eq v5, v7, :cond_5

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 337
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lc8/lTe;->access$802(Lc8/lTe;Z)Z

    .line 339
    invoke-static {v0, v8}, Lc8/lTe;->access$902(Lc8/lTe;Lc8/kTe;)Lc8/kTe;

    .line 340
    invoke-static {v0, v4}, Lc8/lTe;->access$1000(Lc8/lTe;[Ljava/lang/String;)V

    goto :goto_0

    .line 341
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_5
    if-ne v5, v7, :cond_6

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_6

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 342
    new-instance v6, Lc8/kTe;

    invoke-direct {v6, p0, v0, v8}, Lc8/kTe;-><init>(Lc8/nTe;Lc8/lTe;Lc8/gTe;)V

    invoke-static {v0, v6}, Lc8/lTe;->access$902(Lc8/lTe;Lc8/kTe;)Lc8/kTe;

    goto :goto_0

    .line 343
    :cond_6
    if-ne v5, v7, :cond_7

    const-string/jumbo v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_7

    const-string/jumbo v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 346
    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    invoke-interface {v2}, Lc8/ZVp;->close()V

    .line 382
    :cond_0
    iget-object v2, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v3, p0, Lc8/nTe;->journalFileTmp:Ljava/io/File;

    invoke-interface {v2, v3}, Lc8/fVe;->sink(Ljava/io/File;)Lc8/tWp;

    move-result-object v2

    invoke-static {v2}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 384
    .local v1, "writer":Lc8/ZVp;
    :try_start_1
    const-string/jumbo v2, "libcore.io.DiskLruCache"

    invoke-interface {v1, v2}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 385
    const-string/jumbo v2, "1"

    invoke-interface {v1, v2}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 386
    iget v2, p0, Lc8/nTe;->appVersion:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lc8/ZVp;->writeDecimalLong(J)Lc8/ZVp;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 387
    iget v2, p0, Lc8/nTe;->valueCount:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lc8/ZVp;->writeDecimalLong(J)Lc8/ZVp;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 388
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 390
    iget-object v2, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lTe;

    .line 391
    .local v0, "entry":Lc8/lTe;
    invoke-static {v0}, Lc8/lTe;->access$900(Lc8/lTe;)Lc8/kTe;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 392
    const-string/jumbo v3, "DIRTY"

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 393
    invoke-static {v0}, Lc8/lTe;->access$1500(Lc8/lTe;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 394
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    .end local v0    # "entry":Lc8/lTe;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v1}, Lc8/ZVp;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 378
    .end local v1    # "writer":Lc8/ZVp;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 396
    .restart local v0    # "entry":Lc8/lTe;
    .restart local v1    # "writer":Lc8/ZVp;
    :cond_1
    :try_start_3
    const-string/jumbo v3, "CLEAN"

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 397
    invoke-static {v0}, Lc8/lTe;->access$1500(Lc8/lTe;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 398
    invoke-virtual {v0, v1}, Lc8/lTe;->writeLengths(Lc8/ZVp;)V

    .line 399
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 403
    .end local v0    # "entry":Lc8/lTe;
    :cond_2
    :try_start_4
    invoke-interface {v1}, Lc8/ZVp;->close()V

    .line 406
    iget-object v2, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v3, p0, Lc8/nTe;->journalFile:Ljava/io/File;

    invoke-interface {v2, v3}, Lc8/fVe;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 407
    iget-object v2, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v3, p0, Lc8/nTe;->journalFile:Ljava/io/File;

    iget-object v4, p0, Lc8/nTe;->journalFileBackup:Ljava/io/File;

    invoke-interface {v2, v3, v4}, Lc8/fVe;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 409
    :cond_3
    iget-object v2, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v3, p0, Lc8/nTe;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lc8/nTe;->journalFile:Ljava/io/File;

    invoke-interface {v2, v3, v4}, Lc8/fVe;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 410
    iget-object v2, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v3, p0, Lc8/nTe;->journalFileBackup:Ljava/io/File;

    invoke-interface {v2, v3}, Lc8/fVe;->delete(Ljava/io/File;)V

    .line 412
    invoke-direct {p0}, Lc8/nTe;->newJournalWriter()Lc8/ZVp;

    move-result-object v2

    iput-object v2, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    .line 413
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/nTe;->hasJournalErrors:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 414
    monitor-exit p0

    return-void
.end method

.method private removeEntry(Lc8/lTe;)Z
    .locals 7
    .param p1, "entry"    # Lc8/lTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 602
    invoke-static {p1}, Lc8/lTe;->access$900(Lc8/lTe;)Lc8/kTe;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 603
    invoke-static {p1}, Lc8/lTe;->access$900(Lc8/lTe;)Lc8/kTe;

    move-result-object v1

    invoke-static {v1, v6}, Lc8/kTe;->access$1902(Lc8/kTe;Z)Z

    .line 606
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/nTe;->valueCount:I

    if-ge v0, v1, :cond_1

    .line 607
    iget-object v1, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    invoke-static {p1}, Lc8/lTe;->access$1300(Lc8/lTe;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lc8/fVe;->delete(Ljava/io/File;)V

    .line 608
    iget-wide v2, p0, Lc8/nTe;->size:J

    invoke-static {p1}, Lc8/lTe;->access$1200(Lc8/lTe;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lc8/nTe;->size:J

    .line 609
    invoke-static {p1}, Lc8/lTe;->access$1200(Lc8/lTe;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_1
    iget v1, p0, Lc8/nTe;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/nTe;->redundantOpCount:I

    .line 613
    iget-object v1, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    const-string/jumbo v2, "REMOVE"

    invoke-interface {v1, v2}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    move-result-object v1

    invoke-static {p1}, Lc8/lTe;->access$1500(Lc8/lTe;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 614
    iget-object v1, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lc8/lTe;->access$1500(Lc8/lTe;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-direct {p0}, Lc8/nTe;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    iget-object v1, p0, Lc8/nTe;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lc8/nTe;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 620
    :cond_2
    return v6
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    :goto_0
    iget-wide v2, p0, Lc8/nTe;->size:J

    iget-wide v4, p0, Lc8/nTe;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 663
    iget-object v1, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lTe;

    .line 664
    .local v0, "toEvict":Lc8/lTe;
    invoke-direct {p0, v0}, Lc8/nTe;->removeEntry(Lc8/lTe;)Z

    goto :goto_0

    .line 666
    .end local v0    # "toEvict":Lc8/lTe;
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 691
    sget-object v1, Lc8/nTe;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 692
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/nTe;->initialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/nTe;->closed:Z

    if-eqz v1, :cond_1

    .line 646
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/nTe;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :goto_0
    monitor-exit p0

    return-void

    .line 650
    :cond_1
    :try_start_1
    iget-object v1, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lc8/lTe;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc8/lTe;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 651
    .local v0, "entry":Lc8/lTe;
    invoke-static {v0}, Lc8/lTe;->access$900(Lc8/lTe;)Lc8/kTe;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 652
    invoke-static {v0}, Lc8/lTe;->access$900(Lc8/lTe;)Lc8/kTe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/kTe;->abort()V

    .line 650
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 655
    .end local v0    # "entry":Lc8/lTe;
    :cond_3
    invoke-direct {p0}, Lc8/nTe;->trimToSize()V

    .line 656
    iget-object v1, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    invoke-interface {v1}, Lc8/ZVp;->close()V

    .line 657
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    .line 658
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/nTe;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 645
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0}, Lc8/nTe;->close()V

    .line 675
    iget-object v0, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v1, p0, Lc8/nTe;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Lc8/fVe;->deleteContents(Ljava/io/File;)V

    .line 676
    return-void
.end method

.method public edit(Ljava/lang/String;)Lc8/kTe;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lc8/nTe;->edit(Ljava/lang/String;J)Lc8/kTe;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lc8/mTe;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 422
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/nTe;->initialize()V

    .line 424
    invoke-direct {p0}, Lc8/nTe;->checkNotClosed()V

    .line 425
    invoke-direct {p0, p1}, Lc8/nTe;->validateKey(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lTe;

    .line 427
    .local v0, "entry":Lc8/lTe;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lc8/lTe;->access$800(Lc8/lTe;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 438
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 429
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lc8/lTe;->snapshot()Lc8/mTe;

    move-result-object v1

    .line 430
    .local v1, "snapshot":Lc8/mTe;
    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_0

    .line 432
    :cond_3
    iget v2, p0, Lc8/nTe;->redundantOpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/nTe;->redundantOpCount:I

    .line 433
    iget-object v2, p0, Lc8/nTe;->journalWriter:Lc8/ZVp;

    const-string/jumbo v3, "READ"

    invoke-interface {v2, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    move-result-object v2

    invoke-interface {v2, p1}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 434
    invoke-direct {p0}, Lc8/nTe;->journalRebuildRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    iget-object v2, p0, Lc8/nTe;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lc8/nTe;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 422
    .end local v0    # "entry":Lc8/lTe;
    .end local v1    # "snapshot":Lc8/mTe;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lc8/nTe;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 203
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lc8/nTe;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_1
    :try_start_2
    iget-object v1, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v2, p0, Lc8/nTe;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2}, Lc8/fVe;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v2, p0, Lc8/nTe;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lc8/fVe;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    iget-object v1, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v2, p0, Lc8/nTe;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2}, Lc8/fVe;->delete(Ljava/io/File;)V

    .line 218
    :cond_2
    :goto_1
    iget-object v1, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v2, p0, Lc8/nTe;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lc8/fVe;->exists(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    :try_start_3
    invoke-direct {p0}, Lc8/nTe;->readJournal()V

    .line 221
    invoke-direct {p0}, Lc8/nTe;->processJournal()V

    .line 222
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/nTe;->initialized:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/nTe;->directory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Lc8/xTe;->logW(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lc8/nTe;->delete()V

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/nTe;->closed:Z

    .line 232
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_3
    invoke-direct {p0}, Lc8/nTe;->rebuildJournal()V

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/nTe;->initialized:Z

    goto :goto_0

    .line 213
    :cond_4
    iget-object v1, p0, Lc8/nTe;->fileSystem:Lc8/fVe;

    iget-object v2, p0, Lc8/nTe;->journalFileBackup:Ljava/io/File;

    iget-object v3, p0, Lc8/nTe;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lc8/fVe;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 625
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/nTe;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/nTe;->initialize()V

    .line 594
    invoke-direct {p0}, Lc8/nTe;->checkNotClosed()V

    .line 595
    invoke-direct {p0, p1}, Lc8/nTe;->validateKey(Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lc8/nTe;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lTe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    .local v0, "entry":Lc8/lTe;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 598
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lc8/nTe;->removeEntry(Lc8/lTe;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 592
    .end local v0    # "entry":Lc8/lTe;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
