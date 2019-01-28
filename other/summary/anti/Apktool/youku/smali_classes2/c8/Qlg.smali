.class public Lc8/Qlg;
.super Lc8/llg;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lc8/Xlg;


# direct methods
.method private constructor <init>(Lc8/Xlg;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lc8/Qlg;->a:Lc8/Xlg;

    invoke-direct {p0}, Lc8/llg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Xlg;Lc8/Olg;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lc8/Qlg;-><init>(Lc8/Xlg;)V

    return-void
.end method
