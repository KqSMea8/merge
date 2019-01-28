.class public Lc8/xZf;
.super Landroid/support/v4/util/ArrayMap;
.source "WXStatement.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/ArrayMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final WX_FOR:Ljava/lang/String; = "[[repeat]]"

.field public static final WX_FOR_INDEX:Ljava/lang/String; = "@index"

.field public static final WX_FOR_ITEM:Ljava/lang/String; = "@alias"

.field public static final WX_FOR_LIST:Ljava/lang/String; = "@expression"

.field public static final WX_IF:Ljava/lang/String; = "[[match]]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Landroid/support/v4/util/SimpleArrayMap;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected clone()Lc8/xZf;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lc8/xZf;

    invoke-direct {v0, p0}, Lc8/xZf;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lc8/xZf;->clone()Lc8/xZf;

    move-result-object v0

    return-object v0
.end method
