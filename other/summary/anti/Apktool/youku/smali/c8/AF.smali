.class public Lc8/AF;
.super Ljava/lang/Object;
.source "YearClass.java"


# static fields
.field public static final CLASS_2008:I = 0x7d8

.field public static final CLASS_2009:I = 0x7d9

.field public static final CLASS_2010:I = 0x7da

.field public static final CLASS_2011:I = 0x7db

.field public static final CLASS_2012:I = 0x7dc

.field public static final CLASS_2013:I = 0x7dd

.field public static final CLASS_2014:I = 0x7de

.field public static final CLASS_UNKNOWN:I = -0x1

.field private static final MB:J = 0x100000L

.field private static final MHZ_IN_KHZ:I = 0x3e8

.field private static volatile mYearCategory:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static categorizeByYear(Landroid/content/Context;)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "componentYears":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lc8/AF;->getNumCoresYear()I

    move-result v2

    invoke-static {v1, v2}, Lc8/AF;->conditionallyAdd(Ljava/util/ArrayList;I)V

    .line 67
    invoke-static {}, Lc8/AF;->getClockSpeedYear()I

    move-result v2

    invoke-static {v1, v2}, Lc8/AF;->conditionallyAdd(Ljava/util/ArrayList;I)V

    .line 68
    invoke-static {p0}, Lc8/AF;->getRamYear(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lc8/AF;->conditionallyAdd(Ljava/util/ArrayList;I)V

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const/4 v2, -0x1

    .line 77
    :goto_0
    return v2

    .line 71
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, -0x1

    .line 77
    .local v0, "baseIndex":I
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private static conditionallyAdd(Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)I
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lc8/AF;->mYearCategory:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lc8/AF;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lc8/AF;->mYearCategory:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 43
    invoke-static {p0}, Lc8/AF;->categorizeByYear(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/AF;->mYearCategory:Ljava/lang/Integer;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lc8/AF;->mYearCategory:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getClockSpeedYear()I
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Lc8/yF;->getCPUMaxFreqKHz()I

    move-result v2

    int-to-long v0, v2

    .line 128
    .local v0, "clockSpeedKHz":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 137
    :goto_0
    return v2

    .line 131
    :cond_0
    const-wide/32 v2, 0x80e80

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/16 v2, 0x7d8

    goto :goto_0

    .line 132
    :cond_1
    const-wide/32 v2, 0x975e0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const/16 v2, 0x7d9

    goto :goto_0

    .line 133
    :cond_2
    const-wide/32 v2, 0xf9060

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    const/16 v2, 0x7da

    goto :goto_0

    .line 134
    :cond_3
    const-wide/32 v2, 0x129da0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    const/16 v2, 0x7db

    goto :goto_0

    .line 135
    :cond_4
    const-wide/32 v2, 0x173180

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    const/16 v2, 0x7dc

    goto :goto_0

    .line 136
    :cond_5
    const-wide/32 v2, 0x1ed2a0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    const/16 v2, 0x7dd

    goto :goto_0

    .line 137
    :cond_6
    const/16 v2, 0x7de

    goto :goto_0
.end method

.method private static getNumCoresYear()I
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lc8/yF;->getNumberOfCPUCores()I

    move-result v0

    .line 100
    .local v0, "cores":I
    if-gtz v0, :cond_0

    const/4 v1, -0x1

    .line 103
    :goto_0
    return v1

    .line 101
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v1, 0x7d8

    goto :goto_0

    .line 102
    :cond_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    const/16 v1, 0x7db

    goto :goto_0

    .line 103
    :cond_2
    const/16 v1, 0x7dc

    goto :goto_0
.end method

.method private static getRamYear(Landroid/content/Context;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 161
    invoke-static {p0}, Lc8/yF;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 162
    .local v0, "totalRam":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, -0x1

    .line 169
    :goto_0
    return v2

    .line 163
    :cond_0
    const-wide/32 v2, 0xc000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/16 v2, 0x7d8

    goto :goto_0

    .line 164
    :cond_1
    const-wide/32 v2, 0x12200000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const/16 v2, 0x7d9

    goto :goto_0

    .line 165
    :cond_2
    const-wide/32 v2, 0x20000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    const/16 v2, 0x7da

    goto :goto_0

    .line 166
    :cond_3
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    const/16 v2, 0x7db

    goto :goto_0

    .line 167
    :cond_4
    const-wide/32 v2, 0x60000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    const/16 v2, 0x7dc

    goto :goto_0

    .line 168
    :cond_5
    const-wide v2, 0x80000000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    const/16 v2, 0x7dd

    goto :goto_0

    .line 169
    :cond_6
    const/16 v2, 0x7de

    goto :goto_0
.end method
