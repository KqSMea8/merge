.class public Lc8/pLd;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qLd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubjectBuilder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/pLd;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lc8/pLd;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/pLd;

    .prologue
    .line 69
    iget-object v0, p0, Lc8/pLd;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public build()Lc8/qLd;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lc8/qLd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/qLd;-><init>(Lc8/pLd;Lc8/oLd;)V

    return-object v0
.end method

.method public context(Landroid/content/Context;)Lc8/pLd;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    iput-object p1, p0, Lc8/pLd;->context:Landroid/content/Context;

    .line 78
    return-object p0
.end method
