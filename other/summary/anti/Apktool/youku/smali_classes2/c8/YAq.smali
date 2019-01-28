.class public final Lc8/YAq;
.super Lc8/XAq;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static final INSTANCE:Lc8/YAq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lc8/YAq;

    invoke-direct {v0}, Lc8/YAq;-><init>()V

    sput-object v0, Lc8/YAq;->INSTANCE:Lc8/YAq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/XAq;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lc8/XAq;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/YAq;->INSTANCE:Lc8/YAq;

    return-object v0
.end method
