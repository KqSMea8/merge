.class public Lc8/gLd;
.super Lc8/hLd;
.source "PushEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iLd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hLd",
        "<",
        "Lc8/gLd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lc8/hLd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/fLd;)V
    .locals 0
    .param p1, "x0"    # Lc8/fLd;

    .prologue
    .line 108
    invoke-direct {p0}, Lc8/gLd;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic self()Lc8/dLd;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lc8/gLd;->self()Lc8/gLd;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lc8/gLd;
    .locals 0

    .prologue
    .line 111
    return-object p0
.end method
