.class public final Lc8/jgg;
.super Lc8/igg;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TraceDummy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/igg;-><init>(Lc8/hgg;)V

    return-void
.end method

.method synthetic constructor <init>(Lc8/hgg;)V
    .locals 0
    .param p1, "x0"    # Lc8/hgg;

    .prologue
    .line 104
    invoke-direct {p0}, Lc8/jgg;-><init>()V

    return-void
.end method


# virtual methods
.method beginSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 107
    return-void
.end method

.method endSection()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
