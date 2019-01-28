.class public Lc8/Npf;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lc8/Lpf;


# static fields
.field private static final INSTANCE:Lc8/Npf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lc8/Npf;

    invoke-direct {v0}, Lc8/Npf;-><init>()V

    sput-object v0, Lc8/Npf;->INSTANCE:Lc8/Npf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static get()Lc8/Npf;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lc8/Npf;->INSTANCE:Lc8/Npf;

    return-object v0
.end method


# virtual methods
.method public now()J
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
