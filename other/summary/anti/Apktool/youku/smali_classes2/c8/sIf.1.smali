.class public Lc8/sIf;
.super Ljava/lang/Object;
.source "TraceIDCreater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/tIf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lc8/tIf;

    invoke-direct {v0}, Lc8/tIf;-><init>()V

    sput-object v0, Lc8/sIf;->INSTANCE:Lc8/tIf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lc8/tIf;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lc8/sIf;->INSTANCE:Lc8/tIf;

    return-object v0
.end method
