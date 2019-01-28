.class public Lcom/taobao/uikit/utils/FeatureList;
.super Ljava/util/ArrayList;
.source "FeatureList.java"

# interfaces
.implements Lc8/zPf;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Lc8/SOf",
        "<-TT;>;>;",
        "Lc8/zPf",
        "<TT;>;",
        "Ljava/util/Comparator",
        "<",
        "Lc8/SOf",
        "<-TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4cde8c08c1cd7cd9L


# instance fields
.field private mHost:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    .local p1, "host":Landroid/view/View;, "TT;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/taobao/uikit/utils/FeatureList;->mHost:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method public add(Lc8/SOf;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SOf",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    .local p1, "object":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    invoke-virtual {p0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 35
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 36
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 37
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " already add to this view"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    .local v2, "ret":Z
    invoke-static {p0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 47
    return v2
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    check-cast p1, Lc8/SOf;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/utils/FeatureList;->add(Lc8/SOf;)Z

    move-result v0

    return v0
.end method

.method public addFeature(Lc8/SOf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SOf",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    .local p1, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/taobao/uikit/utils/FeatureList;->mHost:Landroid/view/View;

    invoke-virtual {p1, v0}, Lc8/SOf;->setHost(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/utils/FeatureList;->add(Lc8/SOf;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearFeatures()V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/uikit/utils/FeatureList;->clear()V

    .line 110
    iget-object v0, p0, Lcom/taobao/uikit/utils/FeatureList;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 111
    return-void
.end method

.method public compare(Lc8/SOf;Lc8/SOf;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SOf",
            "<-TT;>;",
            "Lc8/SOf",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    .local p1, "lhs":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    .local p2, "rhs":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/UOf;->getFeaturePriority(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/UOf;->getFeaturePriority(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    check-cast p1, Lc8/SOf;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lc8/SOf;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/FeatureList;->compare(Lc8/SOf;Lc8/SOf;)I

    move-result v0

    return v0
.end method

.method public findFeature(Ljava/lang/Class;)Lc8/SOf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/SOf",
            "<-TT;>;>;)",
            "Lc8/SOf",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;>;"
    invoke-virtual {p0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 86
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 88
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 92
    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    :goto_1
    return-object v0

    .line 86
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    sget-object v5, Lcom/youku/phone/R$styleable;->FeatureNameSpace:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 61
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_1

    .line 62
    iget-object v5, p0, Lcom/taobao/uikit/utils/FeatureList;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lc8/UOf;->creator(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 63
    .local v1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 64
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 66
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/utils/FeatureList;->addFeature(Lc8/SOf;)Z

    .line 67
    invoke-virtual {v0, p1, p2, p3}, Lc8/SOf;->constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    .end local v1    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;>;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    return-void
.end method

.method public removeFeature(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/SOf",
            "<-TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/taobao/uikit/utils/FeatureList;, "Lcom/taobao/uikit/utils/FeatureList<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;>;"
    invoke-virtual {p0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 98
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 99
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 100
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/utils/FeatureList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 104
    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    :goto_1
    return v3

    .line 98
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-TT;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
