.class public Lc8/TJ;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticHolder"
.end annotation


# static fields
.field static instance:Lc8/UJ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lc8/UJ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/UJ;-><init>(Lc8/RJ;)V

    sput-object v0, Lc8/TJ;->instance:Lc8/UJ;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
