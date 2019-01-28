.class public final Lc8/lTe;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field private final cleanFiles:[Ljava/io/File;

.field private currentEditor:Lc8/kTe;

.field private final dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lc8/nTe;


# direct methods
.method private constructor <init>(Lc8/nTe;Ljava/lang/String;)V
    .locals 7
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 944
    iput-object p1, p0, Lc8/lTe;->this$0:Lc8/nTe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object p2, p0, Lc8/lTe;->key:Ljava/lang/String;

    .line 947
    invoke-static {p1}, Lc8/nTe;->access$2300(Lc8/nTe;)I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, p0, Lc8/lTe;->lengths:[J

    .line 948
    invoke-static {p1}, Lc8/nTe;->access$2300(Lc8/nTe;)I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lc8/lTe;->cleanFiles:[Ljava/io/File;

    .line 949
    invoke-static {p1}, Lc8/nTe;->access$2300(Lc8/nTe;)I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lc8/lTe;->dirtyFiles:[Ljava/io/File;

    .line 952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 953
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 954
    .local v2, "truncateTo":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {p1}, Lc8/nTe;->access$2300(Lc8/nTe;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    iget-object v3, p0, Lc8/lTe;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lc8/nTe;->access$2800(Lc8/nTe;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 957
    const-string/jumbo v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    iget-object v3, p0, Lc8/lTe;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lc8/nTe;->access$2800(Lc8/nTe;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 959
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lc8/nTe;Ljava/lang/String;Lc8/gTe;)V
    .locals 0
    .param p1, "x0"    # Lc8/nTe;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lc8/gTe;

    .prologue
    .line 927
    invoke-direct {p0, p1, p2}, Lc8/lTe;-><init>(Lc8/nTe;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lc8/lTe;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/lTe;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lc8/lTe;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lc8/lTe;)[J
    .locals 1
    .param p0, "x0"    # Lc8/lTe;

    .prologue
    .line 927
    iget-object v0, p0, Lc8/lTe;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1300(Lc8/lTe;)[Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/lTe;

    .prologue
    .line 927
    iget-object v0, p0, Lc8/lTe;->cleanFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1400(Lc8/lTe;)[Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/lTe;

    .prologue
    .line 927
    iget-object v0, p0, Lc8/lTe;->dirtyFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1500(Lc8/lTe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/lTe;

    .prologue
    .line 927
    iget-object v0, p0, Lc8/lTe;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lc8/lTe;)J
    .locals 2
    .param p0, "x0"    # Lc8/lTe;

    .prologue
    .line 927
    iget-wide v0, p0, Lc8/lTe;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1602(Lc8/lTe;J)J
    .locals 1
    .param p0, "x0"    # Lc8/lTe;
    .param p1, "x1"    # J

    .prologue
    .line 927
    iput-wide p1, p0, Lc8/lTe;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$800(Lc8/lTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/lTe;

    .prologue
    .line 927
    iget-boolean v0, p0, Lc8/lTe;->readable:Z

    return v0
.end method

.method static synthetic access$802(Lc8/lTe;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/lTe;
    .param p1, "x1"    # Z

    .prologue
    .line 927
    iput-boolean p1, p0, Lc8/lTe;->readable:Z

    return p1
.end method

.method static synthetic access$900(Lc8/lTe;)Lc8/kTe;
    .locals 1
    .param p0, "x0"    # Lc8/lTe;

    .prologue
    .line 927
    iget-object v0, p0, Lc8/lTe;->currentEditor:Lc8/kTe;

    return-object v0
.end method

.method static synthetic access$902(Lc8/lTe;Lc8/kTe;)Lc8/kTe;
    .locals 0
    .param p0, "x0"    # Lc8/lTe;
    .param p1, "x1"    # Lc8/kTe;

    .prologue
    .line 927
    iput-object p1, p0, Lc8/lTe;->currentEditor:Lc8/kTe;

    return-object p1
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    array-length v1, p1

    iget-object v2, p0, Lc8/lTe;->this$0:Lc8/nTe;

    invoke-static {v2}, Lc8/nTe;->access$2300(Lc8/nTe;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 966
    invoke-direct {p0, p1}, Lc8/lTe;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 970
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 971
    iget-object v1, p0, Lc8/lTe;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :catch_0
    move-exception v1

    invoke-direct {p0, p1}, Lc8/lTe;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 975
    :cond_1
    return-void
.end method


# virtual methods
.method snapshot()Lc8/mTe;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 995
    iget-object v1, p0, Lc8/lTe;->this$0:Lc8/nTe;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 997
    :cond_0
    iget-object v1, p0, Lc8/lTe;->this$0:Lc8/nTe;

    invoke-static {v1}, Lc8/nTe;->access$2300(Lc8/nTe;)I

    move-result v1

    new-array v6, v1, [Lc8/uWp;

    .line 998
    .local v6, "sources":[Lc8/uWp;
    iget-object v1, p0, Lc8/lTe;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 1000
    .local v7, "lengths":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lc8/lTe;->this$0:Lc8/nTe;

    invoke-static {v1}, Lc8/nTe;->access$2300(Lc8/nTe;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1001
    iget-object v1, p0, Lc8/lTe;->this$0:Lc8/nTe;

    invoke-static {v1}, Lc8/nTe;->access$2400(Lc8/nTe;)Lc8/fVe;

    move-result-object v1

    iget-object v2, p0, Lc8/lTe;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lc8/fVe;->source(Ljava/io/File;)Lc8/uWp;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1003
    :cond_1
    new-instance v1, Lc8/mTe;

    iget-object v2, p0, Lc8/lTe;->this$0:Lc8/nTe;

    iget-object v3, p0, Lc8/lTe;->key:Ljava/lang/String;

    iget-wide v4, p0, Lc8/lTe;->sequenceNumber:J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lc8/mTe;-><init>(Lc8/nTe;Ljava/lang/String;J[Lc8/uWp;[JLc8/gTe;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :goto_1
    return-object v1

    .line 1006
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lc8/lTe;->this$0:Lc8/nTe;

    invoke-static {v1}, Lc8/nTe;->access$2300(Lc8/nTe;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1007
    aget-object v1, v6, v0

    if-eqz v1, :cond_2

    .line 1008
    aget-object v1, v6, v0

    invoke-static {v1}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v9

    .line 1013
    goto :goto_1
.end method

.method writeLengths(Lc8/ZVp;)V
    .locals 6
    .param p1, "writer"    # Lc8/ZVp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    iget-object v3, p0, Lc8/lTe;->lengths:[J

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-wide v0, v3, v2

    .line 981
    .local v0, "length":J
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Lc8/ZVp;->writeDecimalLong(J)Lc8/ZVp;

    .line 980
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 983
    .end local v0    # "length":J
    :cond_0
    return-void
.end method
