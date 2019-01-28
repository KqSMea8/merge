.class public abstract Lc8/eob;
.super Ljava/lang/Object;
.source "ALPOpenClient.java"


# instance fields
.field protected distributionContext:Lc8/wnb;


# direct methods
.method public constructor <init>(Lc8/wnb;)V
    .locals 0
    .param p1, "distributionContext"    # Lc8/wnb;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/eob;->distributionContext:Lc8/wnb;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract execute(Landroid/content/Context;)I
.end method
