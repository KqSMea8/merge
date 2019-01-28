.class public Lc8/Frb;
.super Ljava/lang/Object;
.source "Euler.java"


# static fields
.field private static final DEFAULT_ORDER:Ljava/lang/String; = "XYZ"


# instance fields
.field isEuler:Z

.field order:Ljava/lang/String;

.field x:D

.field y:D

.field z:D


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Frb;->isEuler:Z

    .line 25
    iput-wide v2, p0, Lc8/Frb;->x:D

    .line 26
    iput-wide v2, p0, Lc8/Frb;->y:D

    .line 27
    iput-wide v2, p0, Lc8/Frb;->z:D

    .line 28
    return-void
.end method


# virtual methods
.method setValue(DDDLjava/lang/String;)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "order"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-wide p1, p0, Lc8/Frb;->x:D

    .line 32
    iput-wide p3, p0, Lc8/Frb;->y:D

    .line 33
    iput-wide p5, p0, Lc8/Frb;->z:D

    .line 35
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p7, "XYZ"

    .end local p7    # "order":Ljava/lang/String;
    :cond_0
    iput-object p7, p0, Lc8/Frb;->order:Ljava/lang/String;

    .line 36
    return-void
.end method
