.class public final Lc8/eBq;
.super Lc8/dBq;
.source "RxJavaSingleExecutionHookDefault.java"


# static fields
.field private static final INSTANCE:Lc8/eBq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lc8/eBq;

    invoke-direct {v0}, Lc8/eBq;-><init>()V

    sput-object v0, Lc8/eBq;->INSTANCE:Lc8/eBq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/dBq;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lc8/dBq;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lc8/eBq;->INSTANCE:Lc8/eBq;

    return-object v0
.end method
