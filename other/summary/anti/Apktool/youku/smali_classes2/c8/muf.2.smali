.class public Lc8/muf;
.super Ljava/lang/Object;
.source "Pexode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/nuf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lc8/nuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/nuf;-><init>(Lc8/kuf;)V

    sput-object v0, Lc8/muf;->INSTANCE:Lc8/nuf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/nuf;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lc8/muf;->INSTANCE:Lc8/nuf;

    return-object v0
.end method
