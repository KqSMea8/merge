.class public final Lc8/mTe;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lc8/uWp;

.field final synthetic this$0:Lc8/nTe;


# direct methods
.method private constructor <init>(Lc8/nTe;Ljava/lang/String;J[Lc8/uWp;[J)V
    .locals 1
    .param p1, "this$0"    # Lc8/nTe;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "sources"    # [Lc8/uWp;
    .param p6, "lengths"    # [J

    .prologue
    .line 772
    iput-object p1, p0, Lc8/mTe;->this$0:Lc8/nTe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p2, p0, Lc8/mTe;->key:Ljava/lang/String;

    .line 774
    iput-wide p3, p0, Lc8/mTe;->sequenceNumber:J

    .line 775
    iput-object p5, p0, Lc8/mTe;->sources:[Lc8/uWp;

    .line 776
    iput-object p6, p0, Lc8/mTe;->lengths:[J

    .line 777
    return-void
.end method

.method synthetic constructor <init>(Lc8/nTe;Ljava/lang/String;J[Lc8/uWp;[JLc8/gTe;)V
    .locals 1
    .param p1, "x0"    # Lc8/nTe;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Lc8/uWp;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Lc8/gTe;

    .prologue
    .line 766
    invoke-direct/range {p0 .. p6}, Lc8/mTe;-><init>(Lc8/nTe;Ljava/lang/String;J[Lc8/uWp;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 803
    iget-object v2, p0, Lc8/mTe;->sources:[Lc8/uWp;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 804
    .local v0, "in":Lc8/uWp;
    invoke-static {v0}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    .end local v0    # "in":Lc8/uWp;
    :cond_0
    return-void
.end method

.method public edit()Lc8/kTe;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lc8/mTe;->this$0:Lc8/nTe;

    iget-object v1, p0, Lc8/mTe;->key:Ljava/lang/String;

    iget-wide v2, p0, Lc8/mTe;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lc8/nTe;->access$2200(Lc8/nTe;Ljava/lang/String;J)Lc8/kTe;

    move-result-object v0

    return-object v0
.end method

.method public getSource(I)Lc8/uWp;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lc8/mTe;->sources:[Lc8/uWp;

    aget-object v0, v0, p1

    return-object v0
.end method
