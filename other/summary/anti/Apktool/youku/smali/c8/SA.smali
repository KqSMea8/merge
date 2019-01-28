.class public Lc8/SA;
.super Ljava/lang/Object;
.source "AtlasFileLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/TA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lc8/TA;

    invoke-direct {v0}, Lc8/TA;-><init>()V

    sput-object v0, Lc8/SA;->INSTANCE:Lc8/TA;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lc8/TA;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lc8/SA;->INSTANCE:Lc8/TA;

    return-object v0
.end method
