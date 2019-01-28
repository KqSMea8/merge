.class public interface abstract annotation Lc8/tMf;
.super Ljava/lang/Object;
.source "FieldTraversal.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lc8/tMf;
        value = .enum Lcom/taobao/tao/purchase/inject/TraversalPolicy;->DEFAULT:Lcom/taobao/tao/purchase/inject/TraversalPolicy;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lcom/taobao/tao/purchase/inject/TraversalPolicy;
.end method
