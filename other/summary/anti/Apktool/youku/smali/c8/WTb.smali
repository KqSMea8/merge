.class public Lc8/WTb;
.super Ljava/lang/Object;
.source "UTKeyArraySorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TTb;,
        Lc8/UTb;,
        Lc8/VTb;
    }
.end annotation


# static fields
.field private static s_instance:Lc8/WTb;


# instance fields
.field private mASCComparator:Lc8/UTb;

.field private mDESCComparator:Lc8/VTb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lc8/WTb;->s_instance:Lc8/WTb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lc8/VTb;

    invoke-direct {v0, p0, v1}, Lc8/VTb;-><init>(Lc8/WTb;Lc8/TTb;)V

    iput-object v0, p0, Lc8/WTb;->mDESCComparator:Lc8/VTb;

    .line 17
    new-instance v0, Lc8/UTb;

    invoke-direct {v0, p0, v1}, Lc8/UTb;-><init>(Lc8/WTb;Lc8/TTb;)V

    iput-object v0, p0, Lc8/WTb;->mASCComparator:Lc8/UTb;

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/WTb;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lc8/WTb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/WTb;->s_instance:Lc8/WTb;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lc8/WTb;

    invoke-direct {v0}, Lc8/WTb;-><init>()V

    sput-object v0, Lc8/WTb;->s_instance:Lc8/WTb;

    .line 27
    :cond_0
    sget-object v0, Lc8/WTb;->s_instance:Lc8/WTb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public sortResourcesList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "resources"    # [Ljava/lang/String;
    .param p2, "aUseASC"    # Z

    .prologue
    .line 33
    if-eqz p2, :cond_0

    .line 34
    iget-object v0, p0, Lc8/WTb;->mASCComparator:Lc8/UTb;

    .line 38
    .local v0, "lCompare":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 39
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 42
    .end local p1    # "resources":[Ljava/lang/String;
    :goto_1
    return-object p1

    .line 36
    .end local v0    # "lCompare":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    .restart local p1    # "resources":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lc8/WTb;->mDESCComparator:Lc8/VTb;

    .restart local v0    # "lCompare":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method
