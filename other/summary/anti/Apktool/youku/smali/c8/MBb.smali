.class public Lc8/MBb;
.super Ljava/lang/Object;
.source "KeyArraySorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/JBb;,
        Lc8/KBb;,
        Lc8/LBb;
    }
.end annotation


# static fields
.field private static s_instance:Lc8/MBb;


# instance fields
.field private mASCComparator:Lc8/KBb;

.field private mDESCComparator:Lc8/LBb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lc8/MBb;

    invoke-direct {v0}, Lc8/MBb;-><init>()V

    sput-object v0, Lc8/MBb;->s_instance:Lc8/MBb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lc8/LBb;

    invoke-direct {v0, p0, v1}, Lc8/LBb;-><init>(Lc8/MBb;Lc8/JBb;)V

    iput-object v0, p0, Lc8/MBb;->mDESCComparator:Lc8/LBb;

    .line 18
    new-instance v0, Lc8/KBb;

    invoke-direct {v0, p0, v1}, Lc8/KBb;-><init>(Lc8/MBb;Lc8/JBb;)V

    iput-object v0, p0, Lc8/MBb;->mASCComparator:Lc8/KBb;

    .line 22
    return-void
.end method

.method public static getInstance()Lc8/MBb;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lc8/MBb;->s_instance:Lc8/MBb;

    return-object v0
.end method


# virtual methods
.method public sortResourcesList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "resources"    # [Ljava/lang/String;
    .param p2, "aUseASC"    # Z

    .prologue
    .line 31
    if-eqz p2, :cond_0

    .line 32
    iget-object v0, p0, Lc8/MBb;->mASCComparator:Lc8/KBb;

    .line 36
    .local v0, "lCompare":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 37
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 40
    .end local p1    # "resources":[Ljava/lang/String;
    :goto_1
    return-object p1

    .line 34
    .end local v0    # "lCompare":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    .restart local p1    # "resources":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lc8/MBb;->mDESCComparator:Lc8/LBb;

    .restart local v0    # "lCompare":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method
