.class public Lc8/Hdf;
.super Ljava/lang/Object;
.source "ExpressionExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Idf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpsResult"
.end annotation


# instance fields
.field public interrupt:Z

.field public result:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Gdf;)V
    .locals 0
    .param p1, "x0"    # Lc8/Gdf;

    .prologue
    .line 221
    invoke-direct {p0}, Lc8/Hdf;-><init>()V

    return-void
.end method
