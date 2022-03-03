export type Array<T> = {T}
export type Dictionary<T> = {[string]: T}
export type Map<K, V> = {[K]: V}

-- Rodux types
export type Action<T> = {type: string} & T
export type State = {}

return false
