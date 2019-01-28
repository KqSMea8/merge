.class public Lc8/iuf;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/juf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/juf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lc8/juf;

    invoke-direct {v0}, Lc8/juf;-><init>()V

    sput-object v0, Lc8/iuf;->INSTANCE:Lc8/juf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lc8/juf;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lc8/iuf;->INSTANCE:Lc8/juf;

    return-object v0
.end method
