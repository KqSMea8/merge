.class public Lc8/QK;
.super Ljava/lang/Object;
.source "SchemeGuesser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "holder"
.end annotation


# static fields
.field static instance:Lc8/RK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lc8/RK;

    invoke-direct {v0}, Lc8/RK;-><init>()V

    sput-object v0, Lc8/QK;->instance:Lc8/RK;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
