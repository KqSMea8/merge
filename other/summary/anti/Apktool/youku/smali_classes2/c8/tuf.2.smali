.class public Lc8/tuf;
.super Ljava/lang/Object;
.source "AshmemBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/uuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lc8/uuf;

    invoke-direct {v0}, Lc8/uuf;-><init>()V

    sput-object v0, Lc8/tuf;->INSTANCE:Lc8/uuf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lc8/uuf;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lc8/tuf;->INSTANCE:Lc8/uuf;

    return-object v0
.end method
