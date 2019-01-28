.class public final Lc8/YYn;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aZn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lc8/XYn;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lc8/aZn;


# direct methods
.method private constructor <init>(Lc8/aZn;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lc8/YYn;->this$0:Lc8/aZn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-object p2, p0, Lc8/YYn;->key:Ljava/lang/String;

    .line 913
    invoke-static {p1}, Lc8/aZn;->access$2100(Lc8/aZn;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lc8/YYn;->lengths:[J

    .line 914
    return-void
.end method

.method synthetic constructor <init>(Lc8/aZn;Ljava/lang/String;Lc8/VYn;)V
    .locals 0
    .param p1, "x0"    # Lc8/aZn;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lc8/VYn;

    .prologue
    .line 896
    invoke-direct {p0, p1, p2}, Lc8/YYn;-><init>(Lc8/aZn;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lc8/YYn;)[J
    .locals 1
    .param p0, "x0"    # Lc8/YYn;

    .prologue
    .line 896
    iget-object v0, p0, Lc8/YYn;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1100(Lc8/YYn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/YYn;

    .prologue
    .line 896
    iget-object v0, p0, Lc8/YYn;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/YYn;)J
    .locals 2
    .param p0, "x0"    # Lc8/YYn;

    .prologue
    .line 896
    iget-wide v0, p0, Lc8/YYn;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1202(Lc8/YYn;J)J
    .locals 1
    .param p0, "x0"    # Lc8/YYn;
    .param p1, "x1"    # J

    .prologue
    .line 896
    iput-wide p1, p0, Lc8/YYn;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lc8/YYn;)Z
    .locals 1
    .param p0, "x0"    # Lc8/YYn;

    .prologue
    .line 896
    iget-boolean v0, p0, Lc8/YYn;->readable:Z

    return v0
.end method

.method static synthetic access$602(Lc8/YYn;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/YYn;
    .param p1, "x1"    # Z

    .prologue
    .line 896
    iput-boolean p1, p0, Lc8/YYn;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lc8/YYn;)Lc8/XYn;
    .locals 1
    .param p0, "x0"    # Lc8/YYn;

    .prologue
    .line 896
    iget-object v0, p0, Lc8/YYn;->currentEditor:Lc8/XYn;

    return-object v0
.end method

.method static synthetic access$702(Lc8/YYn;Lc8/XYn;)Lc8/XYn;
    .locals 0
    .param p0, "x0"    # Lc8/YYn;
    .param p1, "x1"    # Lc8/XYn;

    .prologue
    .line 896
    iput-object p1, p0, Lc8/YYn;->currentEditor:Lc8/XYn;

    return-object p1
.end method

.method static synthetic access$800(Lc8/YYn;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/YYn;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lc8/YYn;->setLengths([Ljava/lang/String;)V

    return-void
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
    .line 942
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
    .line 928
    array-length v1, p1

    iget-object v2, p0, Lc8/YYn;->this$0:Lc8/aZn;

    invoke-static {v2}, Lc8/aZn;->access$2100(Lc8/aZn;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 929
    invoke-direct {p0, p1}, Lc8/YYn;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 933
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 934
    iget-object v1, p0, Lc8/YYn;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    :catch_0
    move-exception v1

    invoke-direct {p0, p1}, Lc8/YYn;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 938
    :cond_1
    return-void
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 946
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/YYn;->this$0:Lc8/aZn;

    invoke-static {v1}, Lc8/aZn;->access$2200(Lc8/aZn;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/YYn;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 950
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/YYn;->this$0:Lc8/aZn;

    invoke-static {v1}, Lc8/aZn;->access$2200(Lc8/aZn;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/YYn;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lc8/YYn;->lengths:[J

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-wide v2, v4, v1

    .line 919
    .local v2, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    .end local v2    # "size":J
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
