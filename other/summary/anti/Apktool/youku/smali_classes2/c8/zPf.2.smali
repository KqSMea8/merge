.class public interface abstract Lc8/zPf;
.super Ljava/lang/Object;
.source "IFeatureList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addFeature(Lc8/SOf;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SOf",
            "<-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract clearFeatures()V
.end method

.method public abstract findFeature(Ljava/lang/Class;)Lc8/SOf;
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
.end method

.method public abstract init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end method

.method public abstract removeFeature(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/SOf",
            "<-TT;>;>;)Z"
        }
    .end annotation
.end method
