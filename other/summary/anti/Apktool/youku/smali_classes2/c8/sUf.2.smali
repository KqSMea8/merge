.class public Lc8/sUf;
.super Ljava/lang/Object;
.source "HotPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tUf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/tUf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lc8/tUf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/tUf;-><init>(Lc8/iUf;)V

    sput-object v0, Lc8/sUf;->INSTANCE:Lc8/tUf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/tUf;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lc8/sUf;->INSTANCE:Lc8/tUf;

    return-object v0
.end method
