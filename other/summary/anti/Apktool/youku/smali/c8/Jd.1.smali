.class public Lc8/Jd;
.super Lc8/Md;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisabledElevationAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nd;


# direct methods
.method constructor <init>(Lc8/Nd;)V
    .locals 1

    .prologue
    .line 269
    iput-object p1, p0, Lc8/Jd;->this$0:Lc8/Nd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Md;-><init>(Lc8/Nd;Lc8/Hd;)V

    .line 270
    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method
