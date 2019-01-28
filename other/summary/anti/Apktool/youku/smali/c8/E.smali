.class public abstract Lc8/E;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewProperty"
.end annotation


# instance fields
.field private final mPropertyName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lc8/E;->mPropertyName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lc8/t;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lc8/t;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lc8/E;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method abstract getValue(Landroid/view/View;)F
.end method

.method abstract setValue(Landroid/view/View;F)V
.end method
