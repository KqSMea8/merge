.class public Lc8/Lzk;
.super Ljava/lang/Object;
.source "CMSSkinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/Nzk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lc8/Nzk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Nzk;-><init>(Lc8/Kzk;)V

    sput-object v0, Lc8/Lzk;->INSTANCE:Lc8/Nzk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/Nzk;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lc8/Lzk;->INSTANCE:Lc8/Nzk;

    return-object v0
.end method
