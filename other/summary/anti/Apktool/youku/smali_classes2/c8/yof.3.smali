.class public abstract Lc8/yof;
.super Ljava/lang/Object;
.source "AlibcBasePlugin.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/yof;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0x3e7

.field public static final PRIORITY_LOW:I = 0x1

.field public static final PRIORITY_MID:I = 0x1f4

.field public static final RULE_MATCH_ALL:Ljava/lang/String; = "*"


# instance fields
.field public pluginKey:Ljava/lang/String;

.field public pluginRules:[Ljava/lang/String;

.field public prior:I


# direct methods
.method public constructor <init>([Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "pluginRules"    # [Ljava/lang/String;
    .param p2, "prior"    # I
    .param p3, "pluginKey"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/yof;->pluginRules:[Ljava/lang/String;

    .line 39
    iput p2, p0, Lc8/yof;->prior:I

    .line 40
    iput-object p3, p0, Lc8/yof;->pluginKey:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginRules"    # [Ljava/lang/String;
    .param p2, "pluginKey"    # Ljava/lang/String;

    .prologue
    .line 44
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, p2}, Lc8/yof;-><init>([Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Lc8/yof;)I
    .locals 2
    .param p1, "another"    # Lc8/yof;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget v0, p0, Lc8/yof;->prior:I

    iget v1, p1, Lc8/yof;->prior:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lc8/yof;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/yof;->compareTo(Lc8/yof;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 60
    if-nez p1, :cond_1

    .line 71
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 63
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-ne p1, p0, :cond_2

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_2
    instance-of v1, p1, Lc8/yof;

    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Lc8/yof;->pluginKey:Ljava/lang/String;

    check-cast p1, Lc8/yof;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lc8/yof;->pluginKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract execute(Landroid/app/Activity;Lcom/taobao/flowcustoms/data/OpenParams;)Z
.end method
